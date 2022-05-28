import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:leancloud_play_flutter/logger.dart';

String getFallbackRouter(String appId) {
  var prefix = appId.substring(0, 8).toLowerCase();
  return 'https://$prefix.play.lncldglobal.com/1/multiplayer/router/route';
}

class AppRouter {
  String appId;
  String? playServer;
  String? url;
  int serverValidTimeStamp = 0;

  AppRouter({required this.appId, required this.playServer});

  Future<String> fetch() async {
    // 私有部署和本地调试
    if (playServer != null) {
      return '$playServer/1/multiplayer/router/authorize';
    }

    var now = DateTime.now().millisecondsSinceEpoch;
    if (now < serverValidTimeStamp) {
      // 在有效期内，则直接返回缓存数据
      return url!;
    }

    return _fetch();
  }

  Future<String> _fetch() async {
    var uri = Uri.parse('https://app-router.leancloud.cn/2/route?appId=$appId');
    try {
      var res = await http.get(uri);
      var body = jsonDecode(res.body) as Map;
      if (body.containsKey('play_server')) {
        playServer = body['play_server'];
      } else if (body.containsKey('multiplayer_router_server')) {
        playServer = body['multiplayer_router_server'];
      } else {
        return Future.error('router server is null');
      }

      url = 'https://$playServer/1/multiplayer/router/authorize';
      serverValidTimeStamp =
          DateTime.now().millisecondsSinceEpoch + (body['ttl'] as int) * 1000;
      debug('server valid timestamp: $serverValidTimeStamp');
      debug('get app router from server: $url');
      return url!;
    } catch (e) {
      url = getFallbackRouter(appId);
      debug('fallback router: $url');
      serverValidTimeStamp =
          DateTime.now().millisecondsSinceEpoch + 10800 * 1000;
      return url!;
    }
  }
}
