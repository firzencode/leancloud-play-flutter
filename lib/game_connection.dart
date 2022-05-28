import 'package:fixnum/fixnum.dart';
import 'package:leancloud_play_flutter/code_utils.dart';
import 'package:leancloud_play_flutter/connection.dart';
import 'package:leancloud_play_flutter/proto/google/protobuf/wrappers.pbserver.dart';
import 'package:leancloud_play_flutter/proto/messages.pb.dart';
import 'package:leancloud_play_flutter/proto/messages.pbenum.dart';
import 'package:leancloud_play_flutter/utils.dart';

import 'logger.dart';
import 'package:path/path.dart' as path;

const MAX_PLAYER_COUNT = 10;
const GAME_KEEPALIVE_DURATION = 7000;

convertToRoomOptions({
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
}) {
  var roomOptions = RoomOptions();

  if (roomName != null) {
    roomOptions.cid = roomName;
  }

  if (open != null) {
    roomOptions.open = BoolValue(value: open);
  }

  if (visible != null) {
    roomOptions.visible = BoolValue(value: visible);
  }

  if (emptyRoomTtl != null && emptyRoomTtl > 0) {
    roomOptions.emptyRoomTtl = emptyRoomTtl;
  }

  if (playerTtl != null && playerTtl > 0) {
    roomOptions.playerTtl = playerTtl;
  }

  if (maxPlayerCount != null &&
      maxPlayerCount > 0 &&
      maxPlayerCount < MAX_PLAYER_COUNT) {
    roomOptions.maxMembers = maxPlayerCount;
  }

  if (customRoomProperties != null) {
    roomOptions.attr = serializeObject(customRoomProperties)!;
  }

  if (customRoomPropertyKeysForLobby != null) {
    roomOptions.lobbyAttrKeys.addAll(customRoomPropertyKeysForLobby);
  }

  if (flag != null) {
    roomOptions.flag = flag;
  }

  if (pluginName != null) {
    roomOptions.pluginName = pluginName;
  }

  if (expectedUserIds != null) {
    roomOptions.expectMembers.addAll(expectedUserIds);
  }

  return roomOptions;
}

class GameConnection extends Connection {
  @override
  String get flag => 'game';

  Future<RoomOptions> createRoom({
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
    var req = RequestMessage();
    var roomOpts = convertToRoomOptions(
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
    var createRoomReq = CreateRoomRequest(roomOptions: roomOpts);
    req.createRoom = createRoomReq;
    var res = (await sendRequest(CommandType.conv, OpType.start, req)).res;
    return res.createRoom.roomOptions; // 这里错了，应该是 body 的 res
  }

  @override
  String getFastOpenUrl({
    required String server,
    required String appId,
    required String gameVersion,
    required String userId,
    required String sessionToken,
  }) {
    var uri = Uri.parse(server);
    debug(uri.pathSegments.toString());

    return uri
        .replace(
          path: path.join(uri.path, 'session'),
          queryParameters: {}
            ..addAll(uri.queryParameters)
            ..addAll({
              "appId": appId,
              "sdkVersion": SDK_VERSION,
              "protocolVersion": PROTOCOL_VERSION,
              "gameVersion": gameVersion,
              "userId": userId,
              "sessionToken": sessionToken,
            }),
        )
        .toString();
  }

  @override
  Duration getPingDuration() {
    return const Duration(milliseconds: GAME_KEEPALIVE_DURATION);
  }

  @override
  void handleNotification(CommandType cmd, OpType op, Body body) {
    // TODO: implement handleNotification
  }
}
