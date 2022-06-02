import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:leancloud_play_flutter/code_utils.dart';
import 'package:leancloud_play_flutter/connection.dart';
import 'package:leancloud_play_flutter/proto/google/protobuf/wrappers.pbserver.dart';
import 'package:leancloud_play_flutter/proto/messages.pb.dart';
import 'package:leancloud_play_flutter/proto/messages.pbjson.dart';
import 'package:leancloud_play_flutter/receiver_group.dart';
import 'package:leancloud_play_flutter/utils.dart';
import 'package:path/path.dart' as path;

import 'logger.dart';

// 游戏连接抛出的事件
const PLAYER_JOINED_EVENT = 'PLAYER_JOINED_EVENT';
const PLAYER_LEFT_EVENT = 'PLAYER_LEFT_EVENT';
const MASTER_CHANGED_EVENT = 'MASTER_CHANGED_EVENT';
const ROOM_OPEN_CHANGED_EVENT = 'ROOM_OPEN_CHANGED_EVENT';
const ROOM_VISIBLE_CHANGED_EVENT = 'ROOM_VISIBLE_CHANGED_EVENT';
const ROOM_PROPERTIES_CHANGED_EVENT = 'ROOM_PROPERTIES_CHANGED_EVENT';
const ROOM_SYSTEM_PROPERTIES_CHANGED_EVENT =
    'ROOM_SYSTEM_PROPERTIES_CHANGED_EVENT';
const PLAYER_PROPERTIES_CHANGED_EVENT = 'PLAYER_PROPERTIES_CHANGED_EVENT';
const PLAYER_OFFLINE_EVENT = 'PLAYER_OFFLINE_EVENT';
const PLAYER_ONLINE_EVENT = 'PLAYER_ONLINE_EVENT';
const SEND_CUSTOM_EVENT = 'SEND_CUSTOM_EVENT';
const ROOM_KICKED_EVENT = 'ROOM_KICKED_EVENT';

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
    return res.createRoom.roomOptions;
  }

  Future<RoomOptions> joinRoom({
    required String roomName,
    Map<String, dynamic>? matchProperties,
    List<String>? expectedUserIds,
  }) async {
    var req = RequestMessage();
    var joinRoomReq = JoinRoomRequest();
    var roomOpts = RoomOptions();
    roomOpts.cid = roomName;

    if (matchProperties != null) {
      joinRoomReq.expectAttr = serializeObject(matchProperties)!;
    }
    if (expectedUserIds != null) {
      roomOpts.expectMembers.clear();
      roomOpts.expectMembers.addAll(expectedUserIds);
    }
    joinRoomReq.roomOptions = roomOpts;
    req.joinRoom = joinRoomReq;

    var msg = await sendRequest(CommandType.conv, OpType.add, req);
    return msg.res.joinRoom.roomOptions;
  }

  Future<void> leaveRoom() async {
    var req = RequestMessage();
    await sendRequest(CommandType.conv, OpType.remove, req);
  }

  Future<RoomSystemProperty> setRoomSystemProps(
      RoomSystemProperty props) async {
    var req = RequestMessage();
    var updateSysPropertyReq = UpdateSysPropertyRequest();
    updateSysPropertyReq.sysAttr = props;
    req.updateSysProperty = updateSysPropertyReq;
    var result =
        await sendRequest(CommandType.conv, OpType.update_system_property, req);
    return result.res.updateSysProperty.sysAttr;
  }

  Future<bool> setRoomOpen(bool open) async {
    var sysProps = RoomSystemProperty();
    var o = BoolValue();
    o.value = open;
    sysProps.open = o;
    var result = await setRoomSystemProps(sysProps);
    return result.open.value;
  }

  Future<bool> setRoomVisible(bool visible) async {
    var sysProps = RoomSystemProperty();
    var v = BoolValue();
    v.value = visible;
    sysProps.open = v;
    var result = await setRoomSystemProps(sysProps);
    return result.visible.value;
  }

  Future<int> setRoomMaxPlayerCount(count) async {
    var sysProps = RoomSystemProperty();
    sysProps.maxMembers = count;
    var result = await setRoomSystemProps(sysProps);
    return result.maxMembers;
  }

  Future<dynamic> setRoomExpectedUserIds(List<String> expectedUserIds) async {
    var sysProps = RoomSystemProperty();
    sysProps.expectMembers = jsonEncode({r'$set': expectedUserIds});
    var result = await setRoomSystemProps(sysProps);
    // TODO 这里返回了什么数据？？
    return jsonDecode(result.expectMembers);
  }

  Future<dynamic> clearRoomExpectedUserIds() async {
    var sysProps = RoomSystemProperty();
    sysProps.expectMembers = jsonEncode({r'$drop': true});
    var result = await setRoomSystemProps(sysProps);
    // TODO 这里返回了什么数据？？
    return jsonDecode(result.expectMembers);
  }

  Future<dynamic> removeRoomExpectedUserIds(
      List<String> expectedUserIds) async {
    var sysProps = RoomSystemProperty();
    sysProps.expectMembers = jsonEncode({r'$remove': expectedUserIds});
    var result = await setRoomSystemProps(sysProps);
    // TODO 这里返回了什么数据？？
    return jsonDecode(result.expectMembers);
  }

  Future<int> setMaster(int newMasterId) async {
    var req = RequestMessage();
    var updateMasterClientReq = UpdateMasterClientRequest();
    updateMasterClientReq.masterActorId = newMasterId;
    req.updateMasterClient = updateMasterClientReq;
    var result =
        await sendRequest(CommandType.conv, OpType.update_master_client, req);
    return result.res.updateMasterClient.masterActorId;
  }

  Future<int> kickPlayer({required int actorId, int? code, String? msg}) async {
    var req = RequestMessage();
    var kickReq = KickMemberRequest();
    kickReq.targetActorId = actorId;
    if (code != null || msg != null) {
      kickReq.appInfo = AppInfo(appCode: code, appMsg: msg);
    }
    req.kickMember = kickReq;
    var result = await sendRequest(CommandType.conv, OpType.kick, req);
    return result.res.kickMember.targetActorId;
  }

  Future<void> sendEvent({
    required int eventId,
    Map<String, dynamic>? eventData,
    ReceiveGroup? receiveGroup,
    List<int>? targetActorIds,
  }) async {
    var direct = DirectCommand();
    direct.eventId = eventId;
    if (eventData != null) {
      // 序列化
      direct.msg = serializeObject(eventData)!;
    }
    if (receiveGroup != null || targetActorIds != null) {
      if (receiveGroup != null) {
        direct.receiverGroup = receiveGroup.index;
      }
      if (targetActorIds != null) {
        direct.toActorIds.addAll(targetActorIds);
      }
    } else {
      direct.receiverGroup = ReceiveGroup.all.index;
    }
    var body = Body();
    body.direct = direct;
    sendCommand(CommandType.direct, OpType.none, body);
  }

  Future<Map<String, dynamic>?> setRoomCustomProperties({
    required Map<String, dynamic> properties,
    Map<String, dynamic>? expectedValues,
  }) async {
    var req = RequestMessage();
    var updatePropsReq = UpdatePropertyRequest();
    // 序列化属性
    updatePropsReq.attr = serializeObject(properties)!;
    if (expectedValues != null) {
      // 序列化 CAS 属性
      updatePropsReq.expectAttr = serializeObject(expectedValues)!;
    }
    req.updateProperty = updatePropsReq;
    var result = await sendRequest(CommandType.conv, OpType.update, req);
    // 反序列化 props
    var changedProps = deserializeObject(result.res.updateProperty.attr);
    return changedProps;
  }

  Future<SetPlayerCustomPropertiesResult> setPlayerCustomProperties({
    required int actorId,
    required Map<String, dynamic> properties,
    Map<String, dynamic>? expectedValues,
  }) async {
    var req = RequestMessage();
    var updatePropsReq = UpdatePropertyRequest();
    updatePropsReq.targetActorId = actorId;
    // 序列化属性
    updatePropsReq.attr = serializeObject(properties)!;
    if (expectedValues != null) {
      // 序列化 CAS 属性
      updatePropsReq.expectAttr = serializeObject(expectedValues)!;
    }
    req.updateProperty = updatePropsReq;
    var result =
        await sendRequest(CommandType.conv, OpType.update_player_prop, req);
    // 反序列化 actor Id 和属性
    var aId = result.res.updateProperty.actorId;
    // TODO 这里是否要对这个做反序列化？源码中是没有做的
    var changedProps = result.res.updateProperty.attr;
    return SetPlayerCustomPropertiesResult(
        actorId: actorId, changedProps: changedProps);
  }

  @override
  Duration getPingDuration() {
    return const Duration(milliseconds: GAME_KEEPALIVE_DURATION);
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
  void handleNotification(CommandType cmd, OpType op, Body body) {
    switch (cmd) {
      case CommandType.conv:
        switch (op) {
          case OpType.members_joined:
            _handlePlayerJoined(body.roomNotification.joinRoom);
            break;
          case OpType.members_left:
            _handlePlayerLeftMsg(body.roomNotification.leftRoom);
            break;
          case OpType.master_client_changed:
            _handleMasterChangedMsg(body.roomNotification.updateMasterClient);
            break;
          case OpType.system_property_updated_notify:
            _handleRoomSystemPropsChangedMsg(
                body.roomNotification.updateSysProperty);
            break;
          case OpType.updated_notify:
            _handleRoomPropertiesChangedMsg(
                body.roomNotification.updateProperty);
            break;
          case OpType.player_props:
            _handlePlayerPropertiesChangedMsg(
                body.roomNotification.updateProperty);
            break;
          case OpType.members_offline:
            _handlePlayerOfflineMsg(body.roomNotification);
            break;
          case OpType.members_online:
            _handlePlayerOnlineMsg(body.roomNotification);
            break;
          case OpType.kicked_notice:
            _handleKickedMsg(body.roomNotification);
            break;
          default:
            break;
        }
        break;
      case CommandType.events:
        // 目前不做处理
        break;
      case CommandType.direct:
        _handleSendEventMsg(body.direct);
        break;
      case CommandType.error:
        handleErrorNotify(body.error);
        break;
      default:
        break;
    }
  }

  _handlePlayerJoined(JoinRoomNotification joinRoomNotification) {
    emit(PLAYER_JOINED_EVENT, this, joinRoomNotification.member);
  }

  _handlePlayerLeftMsg(LeftRoomNotification leftRoomNotification) {
    var actorId = leftRoomNotification.actorId;
    emit(PLAYER_LEFT_EVENT, this, actorId);
  }

  _handleMasterChangedMsg(
      UpdateMasterClientNotification updateMasterCLientNotification) {
    var newMasterId = updateMasterCLientNotification.masterActorId;
    emit(MASTER_CHANGED_EVENT, this, newMasterId);
  }

  _handleRoomPropertiesChangedMsg(
      UpdatePropertyNotification updatePropertyNotification) {
    // 反序列化
    var changedProps = deserializeObject(updatePropertyNotification.attr);
    emit(ROOM_PROPERTIES_CHANGED_EVENT, this, changedProps);
  }

  _handlePlayerPropertiesChangedMsg(
      UpdatePropertyNotification updatePropertyNotification) {
    // 反序列化
    var actorId = updatePropertyNotification.actorId;
    var changedProps = deserializeObject(updatePropertyNotification.attr);
    // 这里和 js 版不一样，传了一个 map
    emit(PLAYER_PROPERTIES_CHANGED_EVENT, this,
        {"actorId": actorId, "changedProps": changedProps});
  }

  _handlePlayerOfflineMsg(RoomNotification roomNotification) {
    var actorId = roomNotification.initByActor;
    emit(PLAYER_OFFLINE_EVENT, this, actorId);
  }

  _handlePlayerOnlineMsg(RoomNotification roomNotification) {
    var joinRoom = roomNotification.joinRoom;
    var member = joinRoom.member;
    // 更新 Player
    var actorId = member.actorId;
    var props = deserializeObject(member.attr);
    // 这里和 js 版不一样，传了一个 map
    emit(PLAYER_ONLINE_EVENT, this, {"actorId": actorId, "props": props});
  }

  _handleSendEventMsg(DirectCommand directCommand) {
    var eventId = directCommand.eventId;
    // 反序列化
    Map<String, dynamic>? eventData;
    if (directCommand.hasMsg()) {
      eventData = deserializeObject(directCommand.msg);
    }
    var senderId = directCommand.fromActorId;
    emit(SEND_CUSTOM_EVENT, this,
        {"eventId": eventId, "eventData": eventData, "senderId": senderId});
  }

  _handleKickedMsg(RoomNotification roomNotification) {
    if (roomNotification.hasAppInfo()) {
      var appInfo = roomNotification.appInfo;
      emit(ROOM_KICKED_EVENT, this, {
        'code': appInfo.appCode,
        'msg': appInfo.appMsg,
      });
    } else {
      emit(ROOM_KICKED_EVENT, this);
    }
  }

  _handleRoomSystemPropsChangedMsg(
      UpdateSysPropertyNotification updateStsPropertyNotification) {
    var attr = updateStsPropertyNotification.sysAttr;
    var changedProps = {};
    if (attr.hasOpen()) {
      changedProps["open"] = attr.open.value;
    }
    if (attr.hasVisible()) {
      changedProps["visible"] = attr.visible.value;
    }
    if (attr.hasMaxMembers()) {
      changedProps['maxPlayerCount'] = attr.maxMembers;
    }
    if (attr.hasExpectMembers()) {
      changedProps['expectedUserIds'] = jsonDecode(attr.expectMembers);
    }
    emit(ROOM_SYSTEM_PROPERTIES_CHANGED_EVENT, this, changedProps);
  }
}

class SetPlayerCustomPropertiesResult {
  int actorId;
  List<int> changedProps;

  SetPlayerCustomPropertiesResult(
      {required this.actorId, required this.changedProps});
}
