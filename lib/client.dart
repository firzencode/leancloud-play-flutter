import 'package:eventify/eventify.dart';
import 'package:fixnum/fixnum.dart';
import 'package:leancloud_play_flutter/lobby_room.dart';
import 'package:leancloud_play_flutter/player.dart';

import 'lobby.dart';
import 'lobby_service.dart';
import 'receiver_group.dart';
import 'room.dart';

const defaultGameVersion = '0.0.1';

class Client extends EventEmitter {
  /// 玩家唯一 ID
  String userId;

  /// APP ID
  String appId;

  /// APP Key
  String appKey;

  /// 游戏版本号
  String gameVersion;

  /// 路由地址
  String? playServer;

  LobbyService? lobbyService;
  Lobby? _lobby;

  Room? room;

  Client({
    required this.userId,
    required this.appId,
    required this.appKey,
    this.gameVersion = defaultGameVersion,
    this.playServer,
  }) {
    if (playServer == null && !isInternationalApp(appId)) {
      throw Exception('Please init with your server url.');
    }
  }

  /// 建立连接
  Future<dynamic> connect() async {
    lobbyService = LobbyService(this);
    return lobbyService!.authorize();
  }

  /// 重新连接
  Future<dynamic> reconnect() async {
    return lobbyService!.authorize();
  }

  /// 重新连接并自动加入房间
  Future<void> reconnectAndRejoin() async {
    if (room == null) {
      throw Exception('You have no room.');
    }
    await rejoinRoom(room!.name);
  }

  /// 关闭
  Future<void> close() async {
    await _lobby?.close();
    await room?.close();
    _clear();
  }

  /// 加入大厅
  Future<void> joinLobby() async {
    if (_lobby != null) {
      throw Exception('You are already in lobby.');
    }

    _lobby = Lobby(this);
    await _lobby!.join();
  }

  /// 离开大厅
  Future<void> leaveLobby() async {
    if (_lobby == null) {
      throw Exception('You are not in lobby yet');
    }
    await _lobby!.leave();
  }

  /// 创建房间
  Future<Room> createRoom({
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
    if (room != null) {
      throw Exception('You are already in room.');
    }

    _lobby?.close();

    room = Room(this);
    await room!.create(
      roomName: roomName,
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
    return room!;
  }

  /// 加入房间
  Future<Room> joinRoom(
      {required String roomName, List<String>? expectedUserIds}) async {
    if (room != null) {
      throw Exception('You are already in room');
    }

    _lobby?.close();

    room = Room(this);
    await room!.join(roomName: roomName, expectedUserIds: expectedUserIds);
    return room!;
  }

  /// 重新加入房间
  Future<Room> rejoinRoom(String roomName) async {
    _lobby?.close();
    room = Room(this);
    await room!.rejoin(roomName);
    return room!;
  }

  /// 随机加入或创建房间
  Future<Room> joinOrCreateRoom({
    required String roomName,
    bool? open,
    bool? visible,
    int? emptyRoomTtl,
    int? playerTtl,
    int? maxPlayerCount,
    Map<String, dynamic>? customRoomProperties,
    List<String>? customRoomPropertyKeysForLobby,
    Int64? flag,
    List<String>? expectedUserIds,
  }) async {
    if (room != null) {
      throw Exception('You are already in room');
    }
    _lobby?.close();

    room = Room(this);
    await room!.joinOrCreate(
      roomName: roomName,
      open: open,
      visible: visible,
      emptyRoomTtl: emptyRoomTtl,
      playerTtl: playerTtl,
      maxPlayerCount: maxPlayerCount,
      customRoomProperties: customRoomProperties,
      customRoomPropertyKeysForLobby: customRoomPropertyKeysForLobby,
      flag: flag,
      expectedUserIds: expectedUserIds,
    );
    return room!;
  }

  /// 随机加入房间
  Future<Room> joinRandomRoom({
    Map<String, dynamic>? matchProperties,
    List<String>? expectedUserIds,
  }) async {
    if (room != null) {
      throw Exception("You are already in room.");
    }

    _lobby?.close();

    room = Room(this);
    await room!.joinRamdom(
        matchProperties: matchProperties, expectedUserIds: expectedUserIds);
    return room!;
  }

  /// 随机匹配，匹配成功后并不加入房间，而是返回房间 id
  Future<void> matchRandom(
    String piggybackPeerId, {
    Map<String, dynamic>? matchProperties,
    List<String>? expectedUserIds,
  }) async {
    await lobbyService!.matchRandom(
        piggybackPeerId: piggybackPeerId,
        matchProperties: matchProperties,
        expectedUserIds: expectedUserIds);
  }

  /// 设置房间开启 / 关闭
  Future<void> setRoomOpen(bool open) async {
    if (room == null) {
      throw Exception("You are not in room yet.");
    }
    await room!.setOpen(open);
  }

  /// 设置房间可见 / 不可见
  Future<void> setRoomVisible(bool visible) async {
    if (room == null) {
      throw Exception("You are not in room yet.");
    }
    await room!.setVisible(visible);
  }

  /// 设置房间允许的最大玩家数量
  Future<void> setRoomMaxPlayerCount(int count) async {
    if (room == null) {
      throw Exception("You are not in room yet.");
    }
    await room!.setMaxPlayerCount(count);
  }

  /// 设置房间占位玩家 Id 列表
  Future<void> setRoomExpectedUserIds(List<String> expectedUserIds) async {
    if (room == null) {
      throw Exception('You are not in room yet.');
    }
    await room!.setExpectedUserIds(expectedUserIds);
  }

  /// 清空房间占位玩家 Id 列表
  Future<void> clearRoomExpectedUserIds() async {
    if (room == null) {
      throw Exception('You are not in room yet.');
    }
    await room!.clearExpectedUserIds();
  }

  /// 增加房间占位玩家 Id 列表
  Future<void> addRoomExpectedUserIds(List<String> expectedUserIds) async {
    if (room == null) {
      throw Exception('You are not in room yet.');
    }
    await room!.addExpectedUserIds(expectedUserIds);
  }

  /// 移除房间占位玩家 Id 列表
  Future<void> removeRoomExpectedUserIds(List<String> expectedUserIds) async {
    if (room == null) {
      throw Exception('You are not in room yet.');
    }
    await room!.removeExpectedUserIds(expectedUserIds);
  }

  /// 设置房主
  Future<void> setMaster(int newMasterId) async {
    if (room == null) {
      throw Exception('You are not in room yet.');
    }
    await room!.setMaster(newMasterId);
  }

  /// 发送自定义消息
  Future<void> sendEvent({
    required int eventId,
    Map<String, dynamic>? eventData,
    ReceiveGroup? receiveGroup = ReceiveGroup.all,
    List<int>? targetActorIds,
  }) async {
    if (room == null) {
      throw Exception('You are not in room yet.');
    }
    await room!.sendEvent(
      eventId: eventId,
      eventData: eventData,
      receiveGroup: receiveGroup,
      targetActorIds: targetActorIds,
    );
  }

  /// 离开房间
  Future<void> leaveRoom() async {
    if (room == null) {
      throw Exception('You are not in room yet.');
    }
    await room!.leave();
  }

  /// 踢人
  Future<void> kickPlayer({
    required int actorId,
    int? code,
    String? msg,
  }) async {
    if (room == null) {
      throw Exception('You are not in room yet.');
    }
    await room!.kickPlayer(actorId: actorId, code: code, msg: msg);
  }

  /// 暂停消息队列处理
  void pauseMessageQueue() {
    if (room == null) {
      throw Exception('You are not in room yet.');
    }
    room!.pauseMessageQueue();
  }

  /// 恢复消息队列处理
  void resumeMessageQueue() {
    if (room == null) {
      throw Exception('You are not in room yet.');
    }
    room!.resumeMessageQueue();
  }

  // get Room room => _room;

  /// 获取当前玩家
  Player? get player {
    if (room == null) {
      throw Exception('You are not in room yet.');
    }
    return room!.player;
  }

  /// 获取房间列表
  List<LobbyRoom> get lobbyRoomList {
    if (_lobby == null) {
      throw Exception('You are not in lobby yet.');
    }
    return _lobby!.lobbyRoomList;
  }

  void _clear() {
    clear();
    _lobby = null;
    room = null;
  }
}

bool isInternationalApp(String appId) {
  var suffix = appId.substring(appId.length - 9);
  return suffix == '-MdYXbMMI';
}
