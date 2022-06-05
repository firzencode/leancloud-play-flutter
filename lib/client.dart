import 'package:eventify/eventify.dart';
import 'package:fixnum/fixnum.dart';
import 'package:leancloud_play_flutter/lobby_service.dart';
import 'package:leancloud_play_flutter/room.dart';

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
    // return await rejoinRoom
    // TODO
  }

  /// 关闭
  Future<void> close() async {
    // TODO
    await room?.close();
    _clear();
  }

  Future<void> joinLobby() async {}

  Future<void> leaveLobby() async {}

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

    // TODO
    //     if (this._lobby) {
    //   this._lobby.close();
    // }

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

  Future<Room> joinRoom(
      {required String roomName, List<String>? expectedUserIds}) async {
    if (room != null) {
      throw Exception('You are already in room');
    }
    // TODO lobby

    room = Room(this);
    await room!.join(roomName: roomName, expectedUserIds: expectedUserIds);
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
