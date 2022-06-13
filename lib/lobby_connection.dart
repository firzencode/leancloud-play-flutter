import 'package:leancloud_play_flutter/code_utils.dart';
import 'package:leancloud_play_flutter/connection.dart';
import 'package:leancloud_play_flutter/lobby_room.dart';
import 'package:leancloud_play_flutter/play_error.dart';
import 'package:leancloud_play_flutter/play_error_code.dart';
import 'package:leancloud_play_flutter/proto/messages.pb.dart';
import 'package:leancloud_play_flutter/utils.dart';
import 'package:path/path.dart' as path;

const LOBBY_KEEPALIVE_DURATION = 120000;
const ROOM_LIST_UPDATED_EVENT = 'ROOM_LIST_UPDATED_EVENT';

LobbyRoom convertToLobbyRoom(RoomOptions roomOptions) {
  var lobbyRoom = LobbyRoom(
    roomName: roomOptions.cid,
    maxPlayerCount: roomOptions.maxMembers,
    expectedUserIds: roomOptions.expectMembers,
    emptyRoomTtl: roomOptions.emptyRoomTtl,
    playerTtl: roomOptions.playerTtl,
    playerCount: roomOptions.memberCount,
    customRoomProperties: deserializeObject(roomOptions.attr),
    visible: roomOptions.visible.value,
    open: roomOptions.open.value,
  );
  return lobbyRoom;
}

class LobbyConnection extends Connection {
  @override
  String get flag => 'lobby';

  Future<void> joinLobby() async {
    if (fsm.current?.identifier != 'connected') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${fsm.current?.identifier}');
    }
    var req = RequestMessage();
    await sendRequest(CommandType.lobby, OpType.add, req);
  }

  Future<void> leaveLobby() async {
    if (fsm.current?.identifier != 'connected') {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${fsm.current?.identifier}');
    }
    var req = RequestMessage();
    await sendRequest(CommandType.lobby, OpType.remove, req);
  }

  @override
  String getFastOpenUrl({
    required String server,
    required String appId,
    required String gameVersion,
    required String userId,
    required String sessionToken,
  }) {
    return Uri.parse(
      '$server/1/multiplayer/lobby/websocket',
    ).replace(
      queryParameters: {
        'appId': appId,
        'sdkVersion': SDK_VERSION,
        'protocolVersion': PROTOCOL_VERSION,
        'gameVersion': gameVersion,
        'userId': userId,
        'sessionToken': sessionToken,
      },
    ).toString();
  }

  @override
  Duration getPingDuration() {
    return const Duration(milliseconds: LOBBY_KEEPALIVE_DURATION);
  }

  @override
  void handleNotification(CommandType cmd, OpType op, Body body) {
    switch (cmd) {
      case CommandType.lobby:
        switch (op) {
          case OpType.room_list:
            _handleRoomListMsg(body);
            break;
          default:
            handleUnknownMsg(cmd, op, body);
            break;
        }
        break;
      case CommandType.statistic:
        // 目前不做处理
        break;
      case CommandType.error:
        handleErrorNotify(body.error);
        break;
      default:
        handleUnknownMsg(cmd, op, body);
        break;
    }
  }

  void _handleRoomListMsg(Body body) {
    var roomList = <LobbyRoom>[];
    var list = body.roomList.list;
    for (var roomOptions in list) {
      var lobbyRoom = convertToLobbyRoom(roomOptions);
      roomList.add(lobbyRoom);
    }
    emit(ROOM_LIST_UPDATED_EVENT, this, roomList);
  }
}
