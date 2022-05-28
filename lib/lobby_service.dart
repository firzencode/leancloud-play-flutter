import 'dart:convert';

import 'package:leancloud_play_flutter/client.dart';
import 'package:leancloud_play_flutter/game_router.dart';
import 'package:leancloud_play_flutter/logger.dart';
import 'package:leancloud_play_flutter/play_error.dart';
import 'package:leancloud_play_flutter/utils.dart';

import 'package:http/http.dart' as http;

const SESSION_TOKEN_KEY = 'X-LC-PLAY-MULTIPLAYER-SESSION-TOKEN';

// Error tapError(Exception e) {
//   error(e.toString());
//   try {} catch (e) {}
// }

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

  Future<dynamic> createRoom(String? roomName) async {
    try {
      var auth = await gameRouter.authorize();
      var url = auth['url'];
      var sessionToken = auth['sessionToken'];
      var path = '/1/multiplayer/lobby/room';
      var fullUrl = '$url$path';
      debug(fullUrl);
      var gameVersion = client.gameVersion;
      var data = {
        'gameVersion': gameVersion,
        'sdkVersion': SDK_VERSION,
        'protocolVersion': PROTOCOL_VERSION,
        'useInsecureAddr': false,
      };
      if (roomName != null) {
        data['cid'] = roomName;
      }
      var headers = <String, String>{};
      headers.addAll(defaultHeaders);
      headers[SESSION_TOKEN_KEY] = sessionToken;

      var res = await http.post(
        Uri.parse(fullUrl),
        headers: headers,
        body: jsonEncode(data),
      );
      debug(res.body);
      debug(res.statusCode.toString());
      var body = jsonDecode(res.body);
      if (res.statusCode >= 200 && res.statusCode < 300) {
        return {
          'cid': body['cid'],
          'addr': body['addr'],
        };
      } else {
        error(res.toString());
        error(body.toString());
        return Future.error(
          PlayError(
            code: body['reasonCode'],
            detail: body['detail'],
          ),
        );
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
