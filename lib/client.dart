import 'package:eventify/eventify.dart';
import 'package:fixnum/fixnum.dart';

import 'lobby.dart';
import 'lobby_service.dart';
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
    // TODO
  }

  /// 离开大厅
  Future<void> leaveLobby() async {
    // TODO
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

  void _clear() {
    // TODO
    room = null;
  }
}

bool isInternationalApp(String appId) {
  var suffix = appId.substring(appId.length - 9);
  return suffix == '-MdYXbMMI';
}
