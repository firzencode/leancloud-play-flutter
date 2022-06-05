import 'package:fixnum/fixnum.dart';
import 'package:leancloud_play_flutter/client.dart';
import 'package:leancloud_play_flutter/code_utils.dart';
import 'package:leancloud_play_flutter/connection.dart';
import 'package:leancloud_play_flutter/fsm.dart';
import 'package:leancloud_play_flutter/game_connection.dart';
import 'package:leancloud_play_flutter/logger.dart';
import 'package:leancloud_play_flutter/play_error.dart';
import 'package:leancloud_play_flutter/play_error_code.dart';
import 'package:leancloud_play_flutter/player.dart';
import 'package:leancloud_play_flutter/proto/messages.pb.dart';
import 'package:statemachine/statemachine.dart';

import 'event.dart';

class Room {
  Client _client;
  StateMachine _fsm = StateMachine();
  GameConnection? _gameConn;

  String? name;
  bool? _open;
  bool? _visible;
  int? _maxPlayerCount;
  int? _masterActorId;
  List<String>? _expectedUserIds;
  Map<int, Player>? _players;
  Player? player;
  Map<String, dynamic>? properties;

  String? lastRoomId;

  Client get client => _client;
  int get masterId => _masterActorId!;

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
      lastRoomId = name;
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
        _client.emit(
          Event.ROOM_CUSTOM_PROPERTIES_CHANGED,
          this,
        );
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
        _client.emit(Event.PLAYER_CUSTOM_PROPERTIES_CHANGED, this,
            EventDataPlayerCustomPropertiesChanged(changedProps: changedProps));
      });

      _gameConn!.on(PLAYER_OFFLINE_EVENT, this, (ev, context) {
        var actorId = ev.eventData as int;
        var player = getPlayer(actorId);
        player.active = false;
        _client.emit(Event.PLAYER_ACTIVITY_CHANGED,
            EventDataPlayerActivityChanged(player: player));
      });

      _gameConn!.on(PLAYER_ONLINE_EVENT, this, (ev, context) {
        var actorId = ev.eventData as int;
        var player = getPlayer(actorId);
        player.active = true;
        _client.emit(Event.PLAYER_ACTIVITY_CHANGED,
            EventDataPlayerActivityChanged(player: player));
      });

      _gameConn!.on(SEND_CUSTOM_EVENT, this, (ev, context) {
        var eventId = (ev.eventData as Map)["eventId"] as int;
        var eventData =
            (ev.eventData as Map)["eventData"] as Map<String, dynamic>;
        var senderId = (ev.eventData as Map)["senderId"] as int;

        _client.emit(
            Event.CUSTOM_EVENT,
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
      var lobbyService = _client.lobbyService;
      var joinRoomResp = await lobbyService!.joinRoom(roomName: roomName);
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

  Future<void> joinRamdom() async {}

  Future<void> rejoin() async {}

  Future<void> joinOrCreate() async {}

  Future<void> leave() async {}

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

  setOpen() {}

  setVisible() {}

  setMaxPlayerCount() {}

  setExpectedUserIds() {}

  clearExpectedUserIds() {}

  addExpectedUserIds() {}

  removeExpectedUserIds() {}

  setMaster() {}

  sendEvent() {}

  _init(RoomOptions roomData) {
    name = roomData.cid;
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
      properties = deserializeObject(roomData.attr);
    } else {
      properties = {};
    }
  }

  /// 根据 actorId 获取 Player 对象
  Player getPlayer(int actorId) {
    var player = _players![actorId];
    if (player == null) {
      throw Exception('player with id:$actorId not found');
    }
    return player;
  }

  void _addPlayer(Player newPlayer) {
    _players![newPlayer.actorId] = newPlayer;
  }

  void _removePlayer(int actorId) {
    _players!.remove(actorId);
  }

  void _mergeProperties(Map<String, dynamic> changedProperties) {
    properties?.addAll(changedProperties);
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
}
