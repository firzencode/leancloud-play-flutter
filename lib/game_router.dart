import 'dart:convert';

import 'package:leancloud_play_flutter/app_router.dart';
import 'package:leancloud_play_flutter/logger.dart';
import 'package:http/http.dart' as http;

class GameRouter {
  String appId;
  String appKey;
  String userId;
  String? server;

  String? sessionToken;
  String? url;
  int serverValidTimeStamp = 0;

  AppRouter appRouter;

  GameRouter({
    required this.appId,
    required this.appKey,
    required this.userId,
    required this.server,
  }) : appRouter = AppRouter(appId: appId, playServer: server);

  Future<dynamic> authorize() async {
    if (_isValid()) {
      return {
        "url": url,
        "sessionToken": sessionToken,
      };
    }
    try {
      var gameRouterUrl = await appRouter.fetch();
      debug(gameRouterUrl);
      var data = {};
      var res = await http.post(
        Uri.parse(gameRouterUrl),
        headers: _getHeaders(),
        body: jsonEncode(data),
      );
      debug(res.body);
      var body = jsonDecode(res.body);
      sessionToken = body['sessionToken'];
      url = body['lobbyAddr'];
      serverValidTimeStamp =
          DateTime.now().millisecondsSinceEpoch + (body['ttl'] as int) * 1000;
      return {
        "url": url,
        "sessionToken": sessionToken,
      };
    } catch (e) {
      error(e.toString());
      return Future.error(e);
    }
  }

  bool _isValid() {
    return (sessionToken != null &&
        url != null &&
        DateTime.now().millisecondsSinceEpoch < serverValidTimeStamp);
  }

  Map<String, String> _getHeaders() {
    return {
      'X-LC-ID': appId,
      'X-LC-KEY': appKey,
      'X-LC-PLAY-USER-ID': userId,
      'Content-Type': 'application/json',
    };
  }
}
