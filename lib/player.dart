import 'dart:math';

import 'package:leancloud_play_flutter/code_utils.dart';
import 'package:leancloud_play_flutter/proto/messages.pb.dart';
import 'package:leancloud_play_flutter/room.dart';

class Player {
  String _userId = '';
  int _actorId = 0;
  bool _active = true;
  Map<String, dynamic> _properties = {};
  Room _room;

  Player({required Room room}) : _room = room;

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
  Future<void> setCustomProperties(
    Map<String, dynamic> properties, {
    Map<String, dynamic>? expectedValues,
  }) async {
    var res = await _room.setPlayerProperties(actorId, properties,
        expectedValues: expectedValues);
    if (res.actorId == actorId) {
      // TODO 原项目中没有进行反序列化，很奇怪
      var attr = deserializeObject(res.changedProps);
      if (attr != null) {
        mergeProperties(attr);
      }
    }
  }

  Map<String, dynamic> get customProperties => _properties;

  void init(RoomMember playerData) {
    _userId = playerData.pid;
    _actorId = playerData.actorId;
    _active = !playerData.inactive;
    _properties.clear();
    _properties.addAll(deserializeObject(playerData.attr) ?? {});
  }

  void mergeProperties(Map<String, dynamic> changedProperties) {
    _properties.addAll(changedProperties);
  }
}
