import 'package:leancloud_play_flutter/code_utils.dart';
import 'package:leancloud_play_flutter/proto/messages.pb.dart';
import 'package:leancloud_play_flutter/room.dart';

class Player {
  String _userId = '';
  int _actorId = 0;
  bool _active = true;
  Map<String, dynamic> _properties = {};
  Room _room;

  /// 玩家 ID
  String get userId => _userId;

  /// 房间玩家 ID
  int get actorId => _actorId;

  /// 判断是不是当前客户端玩家
  bool get isLocal => _actorId != 0 && _room.client.userId == _userId;

  /// 判断是不是主机玩家
  bool get isMaster => _actorId != 0 && _room.masterId == _actorId;

  /// 判断是不是活跃状态
  bool get isActive => _active;
  set active(value) {
    _active = value;
  }

  /// 设置玩家的自定义属性
  void setCustomProperties(
    Map<String, dynamic> properties, {
    Map<String, dynamic>? expectedValues,
  }) {
    // return _room.
  }

  Player({required Room room}) : _room = room;

  void init(RoomMember playerData) {
    _userId = playerData.pid;
    _actorId = playerData.actorId;
    _active = !playerData.inactive;
    _properties.clear();
    _properties.addAll(deserializeObject(playerData.attr) ?? {});
  }

  void mergeProperties(Map<String, dynamic> changedProperties) {}
}
