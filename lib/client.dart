import 'package:leancloud_play_flutter/lobby_service.dart';

const DEFAULT_GAME_VERSION = '0.0.1';

class Client {
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

  late LobbyService lobbyService;

  Client({
    required this.userId,
    required this.appId,
    required this.appKey,
    this.gameVersion = DEFAULT_GAME_VERSION,
    this.playServer,
  }) {
    if (playServer == null && !isInternationalApp(appId)) {
      throw Exception('Please init with your server url.');
    }
  }

  Future<dynamic> connect() async {
    lobbyService = LobbyService(this);
    return lobbyService.authorize();
  }
}

bool isInternationalApp(String appId) {
  var suffix = appId.substring(appId.length - 9);
  return suffix == '-MdYXbMMI';
}
