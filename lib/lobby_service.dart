import 'package:leancloud_play_flutter/client.dart';
import 'package:leancloud_play_flutter/game_router.dart';

class LobbyService {
  Client client;
  GameRouter gameRouter;
  Map<String, String> defaultHeaders;

  LobbyService(this.client)
      : gameRouter = GameRouter(
          appId: client.appId,
          appKey: client.appKey,
          userId: client.userId,
          server: client.playServer,
        ),
        defaultHeaders = {
          'X-LC-ID': client.appId,
          'X-LC-KEY': client.appKey,
          'X-LC-PLAY-USER-ID': client.userId,
          'Content-Type': 'application/json',
        };

  Future<dynamic> authorize() async {
    return gameRouter.authorize();
  }
}
