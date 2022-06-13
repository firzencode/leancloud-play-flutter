import 'package:fixnum/fixnum.dart';
import 'package:leancloud_play_flutter/client.dart';
import 'package:leancloud_play_flutter/code_utils.dart';
import 'package:leancloud_play_flutter/connection.dart';
import 'package:leancloud_play_flutter/fsm.dart';
import 'package:leancloud_play_flutter/game_connection.dart';
import 'package:leancloud_play_flutter/play_error.dart';
import 'package:leancloud_play_flutter/play_error_code.dart';
import 'package:leancloud_play_flutter/player.dart';
import 'package:leancloud_play_flutter/proto/messages.pb.dart';
import 'package:leancloud_play_flutter/receiver_group.dart';

import 'event.dart';

class Room {
  final Client _client;
  final StateMachine _fsm = StateMachine();

  GameConnection? _gameConn;
  String? _name;
  bool? _open;
  bool? _visible;
  int? _maxPlayerCount;
  int? _masterActorId;
  List<String>? _expectedUserIds;
  Map<int, Player>? _players;
  Player? player;
  Map<String, dynamic>? _properties;

  String? lastRoomId;

  Client get client => _client;

  Room(this._client) {
    _fsm.newStartState('init');
    _fsm.newStopState('closed');
    _fsm.newState('joining');
    _fsm.newState('game');
    _fsm.newState('leaving');
    _fsm.newState('disconnected');

    _fsm.addStateTransition(name: 'join', from: ['init'], to: 'joining');
    _fsm.addStateTransition(name: 'joined', from: ['joining'], to: 'game');
    _fsm.addStateTransition(name: 'joinFailed', from: ['joining'], to: 'init');
    _fsm.addStateTransition(name: 'leave', from: ['game'], to: 'leaving');
    _fsm.addStateTransition(name: 'leaveFailed', from: ['leaving'], to: 'game');
    _fsm.addStateTransition(
        name: 'disconnect', from: ['game'], to: 'disconnected');
    _fsm.addStateTransition(
        name: 'close',
        from: ['init', 'joining', 'game', 'leaving', 'disconnected'],
        to: 'closed');
    _fsm['game'].onEntry(() {
      // 为 reconnectAndRejoin() 保存房间 id
      lastRoomId = _name;
      // 注册事件
      _gameConn!.on(ERROR_EVENT, this, (ev, context) {
        _gameConn!.close();
        var data = ev.eventData as ConnectionErrorEventData;
        _client.emit(Event.ERROR, this,
            EventDataError(code: data.code, detail: data.detail));
      });
      _gameConn!.on(PLAYER_JOINED_EVENT, this, (ev, context) {
        var newPlayerData = ev.eventData as RoomMember;
        var newPlayer = Player(room: this);
        newPlayer.init(newPlayerData);
        _addPlayer(newPlayer);
        _client.emit(Event.PLAYER_ROOM_JOINED, this,
            EventDataPlayerRoomJoined(newPlayer: newPlayer));
      });
      _gameConn!.on(PLAYER_LEFT_EVENT, this, (ev, context) {
        var actorId = ev.eventData as int;
        var leftPlayer = getPlayer(actorId);
        _removePlayer(actorId);
        _client.emit(Event.PLAYER_ROOM_LEFT, this,
            EventDataPlayerRoomLeft(leftPlayer: leftPlayer));
      });
      _gameConn!.on(MASTER_CHANGED_EVENT, this, (ev, context) {
        Player? newMaster;
        var newMasterActorId = ev.eventData as int;
        _masterActorId = newMasterActorId;
        // TODO 这里要判断大于 0，为什么？
        if (newMasterActorId > 0) {
          newMaster = getPlayer(newMasterActorId);
        }
        _client.emit(Event.MASTER_SWITCHED, this,
            EventDataMasterSwitched(newMaster: newMaster));
      });

      // TODO 没地方在发送，这个确定有用？
      _gameConn!.on(ROOM_OPEN_CHANGED_EVENT, this, (ev, context) {
        var open = ev.eventData as bool;
        _open = open;
        _client.emit(Event.ROOM_OPEN_CHANGED, this,
            EventDataRoomOpenChanged(open: open));
      });

      // TODO 没地方在发送，这个确定有用？
      _gameConn!.on(ROOM_VISIBLE_CHANGED_EVENT, this, (ev, context) {
        var visible = ev.eventData as bool;
        _client.emit(Event.ROOM_VISIBLE_CHANGED, this,
            EventDataRoomVisibleChanged(visible: visible));
      });

      _gameConn!.on(ROOM_PROPERTIES_CHANGED_EVENT, this, (ev, context) {
        var changedProps = ev.eventData as Map<String, dynamic>;
        _mergeProperties(changedProps);
        _client.emit(Event.ROOM_CUSTOM_PROPERTIES_CHANGED, this,
            EventDataRoomCustomPropertiesChanged(changedProps: changedProps));
      });

      // TODO 看起来上面的 open 和 visible 应该是合并到这里了
      _gameConn!.on(ROOM_SYSTEM_PROPERTIES_CHANGED_EVENT, this, (ev, context) {
        var changedProps = ev.eventData as Map<String, dynamic>;
        _mergeSystemProps(changedProps);
        _client.emit(Event.ROOM_SYSTEM_PROPERTIES_CHANGED, this,
            EventDataRoomSystemPropertiesChanged(changedProps: changedProps));
      });

      _gameConn!.on(PLAYER_PROPERTIES_CHANGED_EVENT, this, (ev, context) {
        var actorId = (ev.eventData as Map)["actorId"] as int;
        var changedProps = (ev.eventData as Map)["changedProps"];
        var player = getPlayer(actorId);
        player.mergeProperties(changedProps);
        _client.emit(
            Event.PLAYER_CUSTOM_PROPERTIES_CHANGED,
            this,
            EventDataPlayerCustomPropertiesChanged(
                actorId: player.actorId, changedProps: changedProps));
      });

      _gameConn!.on(PLAYER_OFFLINE_EVENT, this, (ev, context) {
        var actorId = ev.eventData as int;
        var player = getPlayer(actorId);
        player.active = false;
        _client.emit(Event.PLAYER_ACTIVITY_CHANGED, this,
            EventDataPlayerActivityChanged(player: player));
      });

      _gameConn!.on(PLAYER_ONLINE_EVENT, this, (ev, context) {
        var actorId = ev.eventData as int;
        var player = getPlayer(actorId);
        player.active = true;
        _client.emit(Event.PLAYER_ACTIVITY_CHANGED, this,
            EventDataPlayerActivityChanged(player: player));
      });

      _gameConn!.on(SEND_CUSTOM_EVENT, this, (ev, context) {
        var eventId = (ev.eventData as Map)["eventId"] as int;
        var eventData =
            (ev.eventData as Map)["eventData"] as Map<String, dynamic>;
        var senderId = (ev.eventData as Map)["senderId"] as int;

        _client.emit(
            Event.CUSTOM_EVENT,
            this,
            EventDataCustomEvent(
                eventId: eventId, eventData: eventData, senderId: senderId));
      });

      _gameConn!.on(DISCONNECT_EVENT, this, (ev, context) {
        _fsm.callStateTransition('disconnect');
        _client.emit(Event.DISCONNECTED, this);
      });

      _gameConn!.on(ROOM_KICKED_EVENT, this, (ev, context) async {
        await close();
        _client.emit(Event.ROOM_KICKED, this, ev.eventData);
      });
    });
    _fsm['game'].onExit(() {
      _gameConn!.clear();
    });
    _fsm.start();
    // fsm
    // State state;
  }

  Future<void> create({
    String? roomName,
    bool? open,
    bool? visible,
    int? emptyRoomTtl,
    int? playerTtl,
    int? maxPlayerCount,
    Map<String, dynamic>? customRoomProperties,
    List<String>? customRoomPropertyKeysForLobby,
    Int64? flag,
    String? pluginName,
    List<String>? expectedUserIds,
  }) async {
    _fsm.callStateTransition('join');
    try {
      var lobbyService = _client.lobbyService;
      var createRoomResp = await lobbyService!.createRoom(roomName);
      var cid = createRoomResp.cid;
      var addr = createRoomResp.addr;
      var sessionToken = (await lobbyService.authorize()).sessionToken;
      // 合并
      _gameConn = GameConnection();
      await _gameConn!.connect(
        appId: _client.appId,
        server: addr,
        gameVersion: _client.gameVersion,
        userId: _client.userId,
        sessionToken: sessionToken,
      );

      var room = await _gameConn!.createRoom(
        roomName: cid,
        open: open,
        visible: visible,
        emptyRoomTtl: emptyRoomTtl,
        playerTtl: playerTtl,
        maxPlayerCount: maxPlayerCount,
        customRoomProperties: customRoomProperties,
        customRoomPropertyKeysForLobby: customRoomPropertyKeysForLobby,
        flag: flag,
        pluginName: pluginName,
        expectedUserIds: expectedUserIds,
      );
      _init(room);
      _fsm.callStateTransition('joined');
    } catch (e, st) {
      await close();
      rethrow;
    }
  }

  Future<void> join({
    required String roomName,
    List<String>? expectedUserIds,
  }) async {
    _fsm.callStateTransition('join');
    try {
      var lobbyService = _client.lobbyService!;
      var joinRoomResp = await lobbyService.joinRoom(roomName: roomName);
      var cid = joinRoomResp.cid;
      var addr = joinRoomResp.addr;
      var sessionToken = (await lobbyService.authorize()).sessionToken;
      _gameConn = GameConnection();
      await _gameConn!.connect(
        appId: _client.appId,
        server: addr,
        gameVersion: _client.gameVersion,
        userId: _client.userId,
        sessionToken: sessionToken,
      );
      var room = await _gameConn!
          .joinRoom(roomName: cid, expectedUserIds: expectedUserIds);
      _init(room);
      _fsm.callStateTransition('joined');
    } catch (e) {
      await close();
      rethrow;
    }
  }

  Future<void> joinRamdom({
    Map<String, dynamic>? matchProperties,
    List<String>? expectedUserIds,
  }) async {
    _fsm.callStateTransition('join');
    try {
      var lobbyService = _client.lobbyService!;
      var joinRandomRoomResp = await lobbyService.joinRandomRoom(
          matchProperties: matchProperties, expectedUserIds: expectedUserIds);
      var cid = joinRandomRoomResp.cid;
      var addr = joinRandomRoomResp.addr;
      var sessionToken = (await lobbyService.authorize()).sessionToken;
      var appId = client.appId;
      var gameVersion = client.gameVersion;
      var userId = client.userId;
      _gameConn = GameConnection();
      await _gameConn!.connect(
          appId: appId,
          server: addr,
          gameVersion: gameVersion,
          userId: userId,
          sessionToken: sessionToken);
      var room = await _gameConn!
          .joinRoom(roomName: cid, expectedUserIds: expectedUserIds);
      _init(room);
      _fsm.callStateTransition('joined');
    } catch (e) {
      await close();
      rethrow;
    }
  }

  Future<void> rejoin(String roomName) async {
    _fsm.callStateTransition('join');
    try {
      var lobbyService = _client.lobbyService!;
      var joinRoomResp =
          await lobbyService.joinRoom(roomName: roomName, rejoin: true);
      var cid = joinRoomResp.cid;
      var addr = joinRoomResp.addr;
      var sessionToken = (await lobbyService.authorize()).sessionToken;
      _gameConn = GameConnection();
      var appId = client.appId;
      var gameVersion = client.gameVersion;
      var userId = client.userId;
      await _gameConn!.connect(
          appId: appId,
          server: addr,
          gameVersion: gameVersion,
          userId: userId,
          sessionToken: sessionToken);
      var room = await _gameConn!.joinRoom(roomName: cid);
      _init(room);
      _fsm.callStateTransition("joined");
    } catch (e) {
      await close();
      rethrow;
    }
  }

  /// 随机加入或创建房间
  Future<void> joinOrCreate({
    required String roomName,
    bool? open,
    bool? visible,
    int? emptyRoomTtl,
    int? playerTtl,
    int? maxPlayerCount,
    Map<String, dynamic>? customRoomProperties,
    List<String>? customRoomPropertyKeysForLobby,
    Int64? flag,
    String? pluginName,
    List<String>? expectedUserIds,
  }) async {
    _fsm.callStateTransition("join");
    try {
      var lobbyService = _client.lobbyService!;
      var joinRoomResp = await lobbyService.joinRoom(
          roomName: roomName, createOnNotFound: true);
      var cid = joinRoomResp.cid;
      var addr = joinRoomResp.addr;
      var roomCreated = joinRoomResp.roomCreated;
      var sessionToken = (await lobbyService.authorize()).sessionToken;
      _gameConn = GameConnection();
      var appId = client.appId;
      var gameVersion = client.gameVersion;
      var userId = client.userId;
      await _gameConn!.connect(
          appId: appId,
          server: addr,
          gameVersion: gameVersion,
          userId: userId,
          sessionToken: sessionToken);
      var room;
      if (roomCreated == true) {
        room = await _gameConn!.createRoom(
          roomName: cid,
          open: open,
          visible: visible,
          emptyRoomTtl: emptyRoomTtl,
          playerTtl: playerTtl,
          maxPlayerCount: maxPlayerCount,
          customRoomProperties: customRoomProperties,
          customRoomPropertyKeysForLobby: customRoomPropertyKeysForLobby,
          flag: flag,
          pluginName: pluginName,
          expectedUserIds: expectedUserIds,
        );
      } else {
        room = await _gameConn!
            .joinRoom(roomName: cid, expectedUserIds: expectedUserIds);
      }
      _init(room);
      _fsm.callStateTransition('joined');
    } catch (e) {
      await close();
      rethrow;
    }
  }

  /// 离开房间
  Future<void> leave() async {
    client.room = null;
    _fsm.callStateTransition('leave');
    try {
      await _gameConn!.leaveRoom();
    } catch (e) {
      _fsm.callStateTransition('leaveFailed');
      rethrow;
    }
    await close();
  }

  /// 关闭
  Future<void> close() async {
    if (!_fsm.canCallStateTransition('close')) {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current.toString()}');
    }
    if (_gameConn != null) {
      await _gameConn!.close();
    }
    _client.room = null;
    _fsm.callStateTransition('close');
  }

  /// 设置房间开启 / 关闭
  Future<void> setOpen(bool open) async {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    var o = await _gameConn!.setRoomOpen(open);
    _mergeSystemProps({"open": o});
  }

  /// 设置房间可见 / 不可见
  Future<void> setVisible(bool visible) async {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    var v = await _gameConn!.setRoomVisible(visible);
    _mergeProperties({"visible": v});
  }

  /// 设置房间允许的最大玩家数量
  Future<void> setMaxPlayerCount(int count) async {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }

    var c = await _gameConn!.setRoomMaxPlayerCount(count);
    _mergeSystemProps({'maxPlayerCount': c});
  }

  /// 设置房间占位玩家 Id 列表
  Future<void> setExpectedUserIds(List<String> expectedUserIds) async {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    var ids = _gameConn!.setRoomExpectedUserIds(expectedUserIds);
    _mergeSystemProps({'expectedUserIds': ids});
  }

  /// 清空房间占位玩家 Id 列表
  Future<void> clearExpectedUserIds() async {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    var ids = _gameConn!.clearRoomExpectedUserIds();
    _mergeSystemProps({'expectedUserIds': ids});
  }

  /// 增加房间占位玩家 Id 列表
  Future<void> addExpectedUserIds(List<String> expectedUserIds) async {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    var ids = await _gameConn!.addRoomExpectedUserIds(expectedUserIds);
    _mergeSystemProps({'expectedUserIds': ids});
  }

  /// 移除房间占位玩家 Id 列表
  Future<void> removeExpectedUserIds(List<String> expectedUserIds) async {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    var ids = await _gameConn!.removeRoomExpectedUserIds(expectedUserIds);
    _mergeSystemProps({'expectedUserIds': ids});
  }

  /// 设置房主
  Future<void> setMaster(int newMasterId) async {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    var masterId = await _gameConn!.setMaster(newMasterId);
    _masterActorId = masterId;
  }

  /// 发送自定义消息
  Future<void> sendEvent({
    required int eventId,
    Map<String, dynamic>? eventData,
    ReceiveGroup? receiveGroup = ReceiveGroup.all,
    List<int>? targetActorIds,
  }) async {
    if (eventId < -128 || eventId > 127) {
      throw Exception('eventId must be [-128, 127]');
    }
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    if (receiveGroup == null && targetActorIds == null) {
      throw Exception('receiverGroup and targetActorIds are null');
    }
    await _gameConn!.sendEvent(
      eventId: eventId,
      eventData: eventData,
      receiveGroup: receiveGroup,
      targetActorIds: targetActorIds,
    );
  }

  _init(RoomOptions roomData) {
    _name = roomData.cid;
    _open = roomData.open.value;
    _visible = roomData.visible.value;
    _maxPlayerCount = roomData.maxMembers;
    _masterActorId = roomData.masterActorId;
    _expectedUserIds = roomData.expectMembers;
    _players = {};
    for (var member in roomData.members) {
      var player = Player(room: this);
      player.init(member);
      _players![player.actorId] = player;
      if (player.userId == _client.userId) {
        this.player = player;
      }
    }
    // 属性
    if (roomData.hasAttr()) {
      _properties = deserializeObject(roomData.attr);
    } else {
      _properties = {};
    }
  }

  /// 房间名称
  String get name => _name!;

  /// 房间是否开启
  bool get open => _open!;

  /// 房间是否可见
  bool get visible => _visible!;

  /// 房间允许的最大玩家数量
  int get maxPlayerCount => _maxPlayerCount!;

  /// 获取房主
  Player get master => getPlayer(masterId);

  /// 房间主机玩家 ID
  int get masterId => _masterActorId!;

  /// 邀请的好友 ID 列表
  List<String> get expectedUserIds => _expectedUserIds ?? [];

  /// 获取自定义属性
  Map<String, dynamic> get customProperties => _properties ?? {};

  /// 根据 actorId 获取 Player 对象
  Player getPlayer(int actorId) {
    var player = _players![actorId];
    if (player == null) {
      throw Exception('player with id:$actorId not found');
    }
    return player;
  }

  /// 获取房间内的玩家列表
  List<Player> get playerList => _players?.values.toList() ?? [];

  /// 设置房间的自定义属性
  Future<void> setCustomProperties({
    required Map<String, dynamic> properties,
    Map<String, dynamic>? expectedValues,
  }) async {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }

    var attr = await _gameConn!.setRoomCustomProperties(
      properties: properties,
      expectedValues: expectedValues,
    );
    if (attr != null) {
      // 如果属性没变化，服务端则不会下发 attr 属性
      _mergeProperties(attr);
    }
  }

  /// 设置玩家的自定义属性
  Future<SetPlayerCustomPropertiesResult> setPlayerProperties(
    int actorId,
    Map<String, dynamic> properties, {
    Map<String, dynamic>? expectedValues,
  }) async {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    return await _gameConn!.setPlayerCustomProperties(
        actorId: actorId,
        properties: properties,
        expectedValues: expectedValues);
  }

  /// 踢人
  Future<void> kickPlayer({
    required int actorId,
    int? code,
    String? msg,
  }) async {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }

    int aId =
        await _gameConn!.kickPlayer(actorId: actorId, code: code, msg: msg);
    _removePlayer(aId);
  }

  void pauseMessageQueue() {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    _gameConn!.pauseMessageQueue();
  }

  void resumeMessageQueue() {
    if (_fsm.current?.identifier != 'game') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    _gameConn!.resumeMessageQueue();
  }

  void _addPlayer(Player newPlayer) {
    _players![newPlayer.actorId] = newPlayer;
  }

  void _removePlayer(int actorId) {
    _players!.remove(actorId);
  }

  void _mergeProperties(Map<String, dynamic> changedProperties) {
    _properties?.addAll(changedProperties);
  }

  void _mergeSystemProps(Map<String, dynamic> changedProps) {
    if (changedProps.containsKey('open')) {
      _open = changedProps['open'];
    }

    if (changedProps.containsKey('visible')) {
      _visible = changedProps['visible'];
    }

    if (changedProps.containsKey('maxPlayerCount')) {
      _maxPlayerCount = changedProps['maxPlayerCount'];
    }

    if (changedProps.containsKey('expectedUserIds')) {
      _expectedUserIds = changedProps['expectedUserIds'];
    }
  }

  // TODO simulateDisconnection
}
