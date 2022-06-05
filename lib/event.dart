import 'player.dart';

class Event {
  /// 连接成功
  static const CONNECTED = "connected";

  /// 连接失败
  static const CONNECT_FAILED = "connectFailed";

  /// 断开连接
  static const DISCONNECTED = "disconnected";

  /// 加入到大厅
  static const LOBBY_JOINED = "lobbyJoined";

  /// 离开大厅
  static const LOBBY_LEFT = "lobbyLeft";

  /// 大厅房间列表变化
  static const LOBBY_ROOM_LIST_UPDATED = "lobbyRoomListUpdated";

  /// 创建房间成功
  static const ROOM_CREATED = "roomCreated";

  /// 创建房间失败
  static const ROOM_CRATE_FAILED = "roomCreateFailed";

  /// 加入房间成功
  static const ROOM_JOINED = "roomJoined";

  /// 加入房间失败
  static const ROOM_JOIN_FAILED = "roomJoinFailed";

  /// 有新玩家加入房间
  static const PLAYER_ROOM_JOINED = "newPlayerJoinedRoom";

  /// 有玩家离开房间
  static const PLAYER_ROOM_LEFT = "playerLeftRoom";

  /// 玩家活跃属性变化
  static const PLAYER_ACTIVITY_CHANGED = "playerActivityChanged";

  /// 主机变更
  static const MASTER_SWITCHED = 'masterSwitched';

  /// 房间系统属性变化
  static const ROOM_SYSTEM_PROPERTIES_CHANGED = 'roomSystemPropertiesChanged';

  /// 房间「开启 / 关闭」
  static const ROOM_OPEN_CHANGED = 'roomOpenChanged';

  /// 房间「可见 / 不可见」
  static const ROOM_VISIBLE_CHANGED = 'roomVisibleChanged';

  /// 离开房间
  static const ROOM_LEFT = 'roomLeft';

  /// 被踢出房间
  static const ROOM_KICKED = 'roomKicked';

  /// 房间自定义属性变化
  static const ROOM_CUSTOM_PROPERTIES_CHANGED = 'roomCustomPropertiesChanged';

  /// 玩家自定义属性变化
  static const PLAYER_CUSTOM_PROPERTIES_CHANGED =
      'playerCustomPropertiesChanged';

  /// 自定义事件
  static const CUSTOM_EVENT = 'customEvent';

  /// 错误事件
  static const ERROR = 'error';
}

class EventDataError {
  int code;
  String detail;

  EventDataError({required this.code, required this.detail});
}

class EventDataPlayerRoomJoined {
  Player newPlayer;

  EventDataPlayerRoomJoined({required this.newPlayer});
}

class EventDataPlayerRoomLeft {
  Player leftPlayer;

  EventDataPlayerRoomLeft({required this.leftPlayer});
}

class EventDataMasterSwitched {
  Player? newMaster;

  EventDataMasterSwitched({required this.newMaster});
}

class EventDataRoomOpenChanged {
  bool open;

  EventDataRoomOpenChanged({required this.open});
}

class EventDataRoomVisibleChanged {
  bool visible;

  EventDataRoomVisibleChanged({required this.visible});
}

class EventDataRoomCustomPropertiesChanged {
  Map<String, dynamic> changedProps;

  EventDataRoomCustomPropertiesChanged({required this.changedProps});
}

class EventDataRoomSystemPropertiesChanged {
  Map<String, dynamic> changedProps;

  EventDataRoomSystemPropertiesChanged({required this.changedProps});
}

class EventDataPlayerCustomPropertiesChanged {
  Map<String, dynamic> changedProps;

  EventDataPlayerCustomPropertiesChanged({required this.changedProps});
}

class EventDataPlayerActivityChanged {
  Player player;

  EventDataPlayerActivityChanged({required this.player});
}

class EventDataCustomEvent {
  int eventId;
  Map<String, dynamic> eventData;
  int senderId;

  EventDataCustomEvent(
      {required this.eventId, required this.eventData, required this.senderId});
}
