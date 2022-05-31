import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:leancloud_play_flutter/client.dart';
import 'package:leancloud_play_flutter/game_router.dart';
import 'package:leancloud_play_flutter/logger.dart';
import 'package:leancloud_play_flutter/play_error.dart';
import 'package:leancloud_play_flutter/utils.dart';

const sessionTokenKey = 'X-LC-PLAY-MULTIPLAYER-SESSION-TOKEN';

class CreateRoomResult {
  String cid;
  String addr;

  CreateRoomResult({required this.cid, required this.addr});
}

class JoinRoomResult {
  String cid;
  String addr;
  bool? roomCreated;

  JoinRoomResult(
      {required this.cid, required this.addr, required this.roomCreated});
}

class JoinRandomRoomResult {
  String cid;
  String addr;

  JoinRandomRoomResult({required this.cid, required this.addr});
}

class MatchRandomResult {
  String roomName;
  String addr;

  MatchRandomResult({required this.roomName, required this.addr});
}

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

  Future<AuthorizeResult> authorize() async {
    return gameRouter.authorize();
  }

  Future<CreateRoomResult> createRoom(String? roomName) async {
    try {
      var auth = await gameRouter.authorize();
      var url = auth.url;
      var sessionToken = auth.sessionToken;
      var path = '/1/multiplayer/lobby/room';
      var fullUrl = '$url$path';
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
      headers[sessionTokenKey] = sessionToken;

      var res = await http.post(
        Uri.parse(fullUrl),
        headers: headers,
        body: jsonEncode(data),
      );
      debug(res.body);
      debug(res.statusCode.toString());
      var body = jsonDecode(res.body);
      if (res.statusCode >= 200 && res.statusCode < 300) {
        return CreateRoomResult(
          cid: body['cid'],
          addr: body['addr'],
        );
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

  Future<JoinRoomResult> joinRoom({
    required String roomName,
    List<String>? expectedUserIds,
    bool? rejoin,
    bool? createOnNotFound,
  }) async {
    try {
      var auth = await gameRouter.authorize();
      var url = auth.url;
      var sessionToken = auth.sessionToken;
      var path = '/1/multiplayer/lobby/room/$roomName';
      var fullUrl = '$url$path';
      var gameVersion = client.gameVersion;
      var data = {
        'cid': roomName,
        'gameVersion': gameVersion,
        'sdkVersion': SDK_VERSION,
        'protocolVersion': PROTOCOL_VERSION,
        'useInsecureAddr': false,
      };
      if (expectedUserIds != null) {
        data['expectedUserIds'] = expectedUserIds;
      }
      if (rejoin != null) {
        data['rejoin'] = rejoin;
      }
      if (createOnNotFound != null) {
        data['createOnNotFound'] = createOnNotFound;
      }
      debug(jsonEncode(data));
      var headers = <String, String>{};
      headers.addAll(defaultHeaders);
      headers[sessionTokenKey] = sessionToken;

      var res = await http.post(
        Uri.parse(fullUrl),
        headers: headers,
        body: jsonEncode(data),
      );
      debug(res.body);
      debug(res.statusCode.toString());
      var body = jsonDecode(res.body);
      if (res.statusCode >= 200 && res.statusCode < 300) {
        return JoinRoomResult(
          cid: body['cid'],
          addr: body['addr'],
          roomCreated: body['roomCreated'],
        );
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

  Future<JoinRandomRoomResult> joinRandomRoom({
    Map<String, dynamic>? matchProperties,
    List<String>? expectedUserIds,
  }) async {
    try {
      var auth = await gameRouter.authorize();
      var url = auth.url;
      var sessionToken = auth.sessionToken;
      var path = '/1/multiplayer/lobby/match/room';
      var fullUrl = '$url$path';
      var gameVersion = client.gameVersion;
      var data = {
        'gameVersion': gameVersion,
        'sdkVersion': SDK_VERSION,
        'protocolVersion': PROTOCOL_VERSION,
        'useInsecureAddr': false,
      };
      if (matchProperties != null) {
        data['expectAttr'] = matchProperties;
      }
      if (expectedUserIds != null) {
        data['expectMembers'] = expectedUserIds;
      }
      var headers = <String, String>{};
      headers.addAll(defaultHeaders);
      headers[sessionTokenKey] = sessionToken;
      var res = await http.post(
        Uri.parse(fullUrl),
        headers: headers,
        body: jsonEncode(data),
      );
      debug(res.body);
      debug(res.statusCode.toString());
      var body = jsonDecode(res.body);
      if (res.statusCode >= 200 && res.statusCode < 300) {
        return JoinRandomRoomResult(
          cid: body['cid'],
          addr: body['addr'],
        );
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

  Future<MatchRandomResult> matchRandom({
    required String piggybackPeerId,
    Map<String, dynamic>? matchProperties,
    List<String>? expectedUserIds,
  }) async {
    try {
      var auth = await gameRouter.authorize();
      var url = auth.url;
      var sessionToken = auth.sessionToken;
      var path = '/1/multiplayer/lobby/match/room';
      var fullUrl = '$url$path';
      var gameVersion = client.gameVersion;
      var data = {
        'gameVersion': gameVersion,
        'sdkVersion': SDK_VERSION,
        'protocolVersion': PROTOCOL_VERSION,
        'piggybackPeerId': piggybackPeerId,
        'useInsecureAddr': false,
      };
      if (matchProperties != null) {
        data['expectAttr'] = matchProperties;
      }
      if (expectedUserIds != null) {
        data['expectMembers'] = expectedUserIds;
      }
      var headers = <String, String>{};
      headers.addAll(defaultHeaders);
      headers[sessionTokenKey] = sessionToken;
      var res = await http.post(
        Uri.parse(fullUrl),
        headers: headers,
        body: jsonEncode(data),
      );
      debug(res.body);
      debug(res.statusCode.toString());
      var body = jsonDecode(res.body);
      if (res.statusCode >= 200 && res.statusCode < 300) {
        return MatchRandomResult(
          roomName: body['cid'],
          addr: body['addr'],
        );
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
