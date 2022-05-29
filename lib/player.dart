import 'package:leancloud_play_flutter/code_utils.dart';
import 'package:leancloud_play_flutter/proto/messages.pb.dart';
import 'package:leancloud_play_flutter/room.dart';

class Player {
  late String userId;
  late int actorId;
  late bool active;
  Map<String, dynamic>? properties;
  Player(Room room);

  void init(RoomMember playerData) {
    userId = playerData.pid;
    actorId = playerData.actorId;
    active = !playerData.inactive;
    properties = deserializeObject(playerData.attr);
  }
}
