///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/wrappers.pb.dart' as $0;

import 'messages.pbenum.dart';

export 'messages.pbenum.dart';

class IntValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IntValue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'val', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  IntValue._() : super();
  factory IntValue({
    $core.int? val,
  }) {
    final _result = create();
    if (val != null) {
      _result.val = val;
    }
    return _result;
  }
  factory IntValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IntValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IntValue clone() => IntValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IntValue copyWith(void Function(IntValue) updates) => super.copyWith((message) => updates(message as IntValue)) as IntValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IntValue create() => IntValue._();
  IntValue createEmptyInstance() => create();
  static $pb.PbList<IntValue> createRepeated() => $pb.PbList<IntValue>();
  @$core.pragma('dart2js:noInline')
  static IntValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IntValue>(create);
  static IntValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get val => $_getIZ(0);
  @$pb.TagNumber(1)
  set val($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => clearField(1);
}

class RoomSystemProperty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoomSystemProperty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOM<$0.BoolValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'open', subBuilder: $0.BoolValue.create)
    ..aOM<$0.BoolValue>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'visible', subBuilder: $0.BoolValue.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expectMembers')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxMembers', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RoomSystemProperty._() : super();
  factory RoomSystemProperty({
    $0.BoolValue? open,
    $0.BoolValue? visible,
    $core.String? expectMembers,
    $core.int? maxMembers,
  }) {
    final _result = create();
    if (open != null) {
      _result.open = open;
    }
    if (visible != null) {
      _result.visible = visible;
    }
    if (expectMembers != null) {
      _result.expectMembers = expectMembers;
    }
    if (maxMembers != null) {
      _result.maxMembers = maxMembers;
    }
    return _result;
  }
  factory RoomSystemProperty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomSystemProperty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomSystemProperty clone() => RoomSystemProperty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomSystemProperty copyWith(void Function(RoomSystemProperty) updates) => super.copyWith((message) => updates(message as RoomSystemProperty)) as RoomSystemProperty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomSystemProperty create() => RoomSystemProperty._();
  RoomSystemProperty createEmptyInstance() => create();
  static $pb.PbList<RoomSystemProperty> createRepeated() => $pb.PbList<RoomSystemProperty>();
  @$core.pragma('dart2js:noInline')
  static RoomSystemProperty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomSystemProperty>(create);
  static RoomSystemProperty? _defaultInstance;

  @$pb.TagNumber(1)
  $0.BoolValue get open => $_getN(0);
  @$pb.TagNumber(1)
  set open($0.BoolValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpen() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpen() => clearField(1);
  @$pb.TagNumber(1)
  $0.BoolValue ensureOpen() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.BoolValue get visible => $_getN(1);
  @$pb.TagNumber(2)
  set visible($0.BoolValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVisible() => $_has(1);
  @$pb.TagNumber(2)
  void clearVisible() => clearField(2);
  @$pb.TagNumber(2)
  $0.BoolValue ensureVisible() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get expectMembers => $_getSZ(2);
  @$pb.TagNumber(3)
  set expectMembers($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpectMembers() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpectMembers() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxMembers => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxMembers($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxMembers() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxMembers() => clearField(4);
}

class RoomMember extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoomMember', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pid')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actorId', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attr', $pb.PbFieldType.OY)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inactive')
    ..hasRequiredFields = false
  ;

  RoomMember._() : super();
  factory RoomMember({
    $core.String? pid,
    $core.int? actorId,
    $core.List<$core.int>? attr,
    $core.bool? inactive,
  }) {
    final _result = create();
    if (pid != null) {
      _result.pid = pid;
    }
    if (actorId != null) {
      _result.actorId = actorId;
    }
    if (attr != null) {
      _result.attr = attr;
    }
    if (inactive != null) {
      _result.inactive = inactive;
    }
    return _result;
  }
  factory RoomMember.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomMember.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomMember clone() => RoomMember()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomMember copyWith(void Function(RoomMember) updates) => super.copyWith((message) => updates(message as RoomMember)) as RoomMember; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomMember create() => RoomMember._();
  RoomMember createEmptyInstance() => create();
  static $pb.PbList<RoomMember> createRepeated() => $pb.PbList<RoomMember>();
  @$core.pragma('dart2js:noInline')
  static RoomMember getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomMember>(create);
  static RoomMember? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pid => $_getSZ(0);
  @$pb.TagNumber(1)
  set pid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPid() => $_has(0);
  @$pb.TagNumber(1)
  void clearPid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get actorId => $_getIZ(1);
  @$pb.TagNumber(2)
  set actorId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get attr => $_getN(2);
  @$pb.TagNumber(3)
  set attr($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAttr() => $_has(2);
  @$pb.TagNumber(3)
  void clearAttr() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get inactive => $_getBF(3);
  @$pb.TagNumber(4)
  set inactive($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInactive() => $_has(3);
  @$pb.TagNumber(4)
  void clearInactive() => clearField(4);
}

class AppInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appCode', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appMsg')
    ..hasRequiredFields = false
  ;

  AppInfo._() : super();
  factory AppInfo({
    $core.int? appCode,
    $core.String? appMsg,
  }) {
    final _result = create();
    if (appCode != null) {
      _result.appCode = appCode;
    }
    if (appMsg != null) {
      _result.appMsg = appMsg;
    }
    return _result;
  }
  factory AppInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppInfo clone() => AppInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppInfo copyWith(void Function(AppInfo) updates) => super.copyWith((message) => updates(message as AppInfo)) as AppInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppInfo create() => AppInfo._();
  AppInfo createEmptyInstance() => create();
  static $pb.PbList<AppInfo> createRepeated() => $pb.PbList<AppInfo>();
  @$core.pragma('dart2js:noInline')
  static AppInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppInfo>(create);
  static AppInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get appCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set appCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appMsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set appMsg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppMsg() => clearField(2);
}

class ErrorInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ErrorInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reasonCode', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'detail')
    ..aOM<AppInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appInfo', subBuilder: AppInfo.create)
    ..hasRequiredFields = false
  ;

  ErrorInfo._() : super();
  factory ErrorInfo({
    $core.int? reasonCode,
    $core.String? detail,
    AppInfo? appInfo,
  }) {
    final _result = create();
    if (reasonCode != null) {
      _result.reasonCode = reasonCode;
    }
    if (detail != null) {
      _result.detail = detail;
    }
    if (appInfo != null) {
      _result.appInfo = appInfo;
    }
    return _result;
  }
  factory ErrorInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrorInfo clone() => ErrorInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrorInfo copyWith(void Function(ErrorInfo) updates) => super.copyWith((message) => updates(message as ErrorInfo)) as ErrorInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ErrorInfo create() => ErrorInfo._();
  ErrorInfo createEmptyInstance() => create();
  static $pb.PbList<ErrorInfo> createRepeated() => $pb.PbList<ErrorInfo>();
  @$core.pragma('dart2js:noInline')
  static ErrorInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorInfo>(create);
  static ErrorInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reasonCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set reasonCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReasonCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearReasonCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get detail => $_getSZ(1);
  @$pb.TagNumber(2)
  set detail($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDetail() => $_has(1);
  @$pb.TagNumber(2)
  void clearDetail() => clearField(2);

  @$pb.TagNumber(3)
  AppInfo get appInfo => $_getN(2);
  @$pb.TagNumber(3)
  set appInfo(AppInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppInfo() => clearField(3);
  @$pb.TagNumber(3)
  AppInfo ensureAppInfo() => $_ensure(2);
}

class RoomOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoomOptions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cid')
    ..aOM<$0.BoolValue>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'visible', subBuilder: $0.BoolValue.create)
    ..aOM<$0.BoolValue>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'open', subBuilder: $0.BoolValue.create)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emptyRoomTtl', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerTtl', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxMembers', $pb.PbFieldType.O3)
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flag')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pluginName')
    ..a<$core.List<$core.int>>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attr', $pb.PbFieldType.OY)
    ..pPS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expectMembers')
    ..pPS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lobbyAttrKeys')
    ..pc<RoomMember>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members', $pb.PbFieldType.PM, subBuilder: RoomMember.create)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memberCount', $pb.PbFieldType.O3)
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterActorId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RoomOptions._() : super();
  factory RoomOptions({
    $core.String? cid,
    $0.BoolValue? visible,
    $0.BoolValue? open,
    $core.int? emptyRoomTtl,
    $core.int? playerTtl,
    $core.int? maxMembers,
    $fixnum.Int64? flag,
    $core.String? pluginName,
    $core.List<$core.int>? attr,
    $core.Iterable<$core.String>? expectMembers,
    $core.Iterable<$core.String>? lobbyAttrKeys,
    $core.Iterable<RoomMember>? members,
    $core.int? memberCount,
    $core.int? masterActorId,
  }) {
    final _result = create();
    if (cid != null) {
      _result.cid = cid;
    }
    if (visible != null) {
      _result.visible = visible;
    }
    if (open != null) {
      _result.open = open;
    }
    if (emptyRoomTtl != null) {
      _result.emptyRoomTtl = emptyRoomTtl;
    }
    if (playerTtl != null) {
      _result.playerTtl = playerTtl;
    }
    if (maxMembers != null) {
      _result.maxMembers = maxMembers;
    }
    if (flag != null) {
      _result.flag = flag;
    }
    if (pluginName != null) {
      _result.pluginName = pluginName;
    }
    if (attr != null) {
      _result.attr = attr;
    }
    if (expectMembers != null) {
      _result.expectMembers.addAll(expectMembers);
    }
    if (lobbyAttrKeys != null) {
      _result.lobbyAttrKeys.addAll(lobbyAttrKeys);
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    if (memberCount != null) {
      _result.memberCount = memberCount;
    }
    if (masterActorId != null) {
      _result.masterActorId = masterActorId;
    }
    return _result;
  }
  factory RoomOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomOptions clone() => RoomOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomOptions copyWith(void Function(RoomOptions) updates) => super.copyWith((message) => updates(message as RoomOptions)) as RoomOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomOptions create() => RoomOptions._();
  RoomOptions createEmptyInstance() => create();
  static $pb.PbList<RoomOptions> createRepeated() => $pb.PbList<RoomOptions>();
  @$core.pragma('dart2js:noInline')
  static RoomOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomOptions>(create);
  static RoomOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cid => $_getSZ(0);
  @$pb.TagNumber(1)
  set cid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCid() => clearField(1);

  @$pb.TagNumber(2)
  $0.BoolValue get visible => $_getN(1);
  @$pb.TagNumber(2)
  set visible($0.BoolValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVisible() => $_has(1);
  @$pb.TagNumber(2)
  void clearVisible() => clearField(2);
  @$pb.TagNumber(2)
  $0.BoolValue ensureVisible() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.BoolValue get open => $_getN(2);
  @$pb.TagNumber(3)
  set open($0.BoolValue v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOpen() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpen() => clearField(3);
  @$pb.TagNumber(3)
  $0.BoolValue ensureOpen() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get emptyRoomTtl => $_getIZ(3);
  @$pb.TagNumber(4)
  set emptyRoomTtl($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmptyRoomTtl() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmptyRoomTtl() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get playerTtl => $_getIZ(4);
  @$pb.TagNumber(5)
  set playerTtl($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPlayerTtl() => $_has(4);
  @$pb.TagNumber(5)
  void clearPlayerTtl() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get maxMembers => $_getIZ(5);
  @$pb.TagNumber(6)
  set maxMembers($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaxMembers() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxMembers() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get flag => $_getI64(6);
  @$pb.TagNumber(7)
  set flag($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFlag() => $_has(6);
  @$pb.TagNumber(7)
  void clearFlag() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get pluginName => $_getSZ(7);
  @$pb.TagNumber(8)
  set pluginName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPluginName() => $_has(7);
  @$pb.TagNumber(8)
  void clearPluginName() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get attr => $_getN(8);
  @$pb.TagNumber(9)
  set attr($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAttr() => $_has(8);
  @$pb.TagNumber(9)
  void clearAttr() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.String> get expectMembers => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<$core.String> get lobbyAttrKeys => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<RoomMember> get members => $_getList(11);

  @$pb.TagNumber(13)
  $core.int get memberCount => $_getIZ(12);
  @$pb.TagNumber(13)
  set memberCount($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMemberCount() => $_has(12);
  @$pb.TagNumber(13)
  void clearMemberCount() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get masterActorId => $_getIZ(13);
  @$pb.TagNumber(14)
  set masterActorId($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasMasterActorId() => $_has(13);
  @$pb.TagNumber(14)
  void clearMasterActorId() => clearField(14);
}

class SessionOpenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SessionOpenRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameVersion')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sdkVersion')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protocolVersion')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 't')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'n')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 's')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configBitmap')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionToken')
    ..hasRequiredFields = false
  ;

  SessionOpenRequest._() : super();
  factory SessionOpenRequest({
    $core.String? appId,
    $core.String? peerId,
    $core.String? gameVersion,
    $core.String? sdkVersion,
    $core.String? protocolVersion,
    $fixnum.Int64? t,
    $core.String? n,
    $core.String? s,
    $fixnum.Int64? configBitmap,
    $core.String? sessionToken,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (peerId != null) {
      _result.peerId = peerId;
    }
    if (gameVersion != null) {
      _result.gameVersion = gameVersion;
    }
    if (sdkVersion != null) {
      _result.sdkVersion = sdkVersion;
    }
    if (protocolVersion != null) {
      _result.protocolVersion = protocolVersion;
    }
    if (t != null) {
      _result.t = t;
    }
    if (n != null) {
      _result.n = n;
    }
    if (s != null) {
      _result.s = s;
    }
    if (configBitmap != null) {
      _result.configBitmap = configBitmap;
    }
    if (sessionToken != null) {
      _result.sessionToken = sessionToken;
    }
    return _result;
  }
  factory SessionOpenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionOpenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionOpenRequest clone() => SessionOpenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionOpenRequest copyWith(void Function(SessionOpenRequest) updates) => super.copyWith((message) => updates(message as SessionOpenRequest)) as SessionOpenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SessionOpenRequest create() => SessionOpenRequest._();
  SessionOpenRequest createEmptyInstance() => create();
  static $pb.PbList<SessionOpenRequest> createRepeated() => $pb.PbList<SessionOpenRequest>();
  @$core.pragma('dart2js:noInline')
  static SessionOpenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionOpenRequest>(create);
  static SessionOpenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get peerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set peerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeerId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get gameVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set gameVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGameVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearGameVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get sdkVersion => $_getSZ(3);
  @$pb.TagNumber(4)
  set sdkVersion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSdkVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearSdkVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get protocolVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set protocolVersion($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasProtocolVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearProtocolVersion() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get t => $_getI64(5);
  @$pb.TagNumber(6)
  set t($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasT() => $_has(5);
  @$pb.TagNumber(6)
  void clearT() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get n => $_getSZ(6);
  @$pb.TagNumber(7)
  set n($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasN() => $_has(6);
  @$pb.TagNumber(7)
  void clearN() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get s => $_getSZ(7);
  @$pb.TagNumber(8)
  set s($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasS() => $_has(7);
  @$pb.TagNumber(8)
  void clearS() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get configBitmap => $_getI64(8);
  @$pb.TagNumber(9)
  set configBitmap($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasConfigBitmap() => $_has(8);
  @$pb.TagNumber(9)
  void clearConfigBitmap() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get sessionToken => $_getSZ(9);
  @$pb.TagNumber(10)
  set sessionToken($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSessionToken() => $_has(9);
  @$pb.TagNumber(10)
  void clearSessionToken() => clearField(10);
}

class CreateRoomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateRoomRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOM<RoomOptions>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomOptions', subBuilder: RoomOptions.create)
    ..hasRequiredFields = false
  ;

  CreateRoomRequest._() : super();
  factory CreateRoomRequest({
    RoomOptions? roomOptions,
  }) {
    final _result = create();
    if (roomOptions != null) {
      _result.roomOptions = roomOptions;
    }
    return _result;
  }
  factory CreateRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRoomRequest clone() => CreateRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRoomRequest copyWith(void Function(CreateRoomRequest) updates) => super.copyWith((message) => updates(message as CreateRoomRequest)) as CreateRoomRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateRoomRequest create() => CreateRoomRequest._();
  CreateRoomRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRoomRequest> createRepeated() => $pb.PbList<CreateRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRoomRequest>(create);
  static CreateRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  RoomOptions get roomOptions => $_getN(0);
  @$pb.TagNumber(1)
  set roomOptions(RoomOptions v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomOptions() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomOptions() => clearField(1);
  @$pb.TagNumber(1)
  RoomOptions ensureRoomOptions() => $_ensure(0);
}

class CreateRoomResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateRoomResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOM<RoomOptions>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomOptions', subBuilder: RoomOptions.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addr')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomCreated')
    ..hasRequiredFields = false
  ;

  CreateRoomResponse._() : super();
  factory CreateRoomResponse({
    RoomOptions? roomOptions,
    $core.String? addr,
    $core.bool? roomCreated,
  }) {
    final _result = create();
    if (roomOptions != null) {
      _result.roomOptions = roomOptions;
    }
    if (addr != null) {
      _result.addr = addr;
    }
    if (roomCreated != null) {
      _result.roomCreated = roomCreated;
    }
    return _result;
  }
  factory CreateRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRoomResponse clone() => CreateRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRoomResponse copyWith(void Function(CreateRoomResponse) updates) => super.copyWith((message) => updates(message as CreateRoomResponse)) as CreateRoomResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateRoomResponse create() => CreateRoomResponse._();
  CreateRoomResponse createEmptyInstance() => create();
  static $pb.PbList<CreateRoomResponse> createRepeated() => $pb.PbList<CreateRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRoomResponse>(create);
  static CreateRoomResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RoomOptions get roomOptions => $_getN(0);
  @$pb.TagNumber(1)
  set roomOptions(RoomOptions v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomOptions() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomOptions() => clearField(1);
  @$pb.TagNumber(1)
  RoomOptions ensureRoomOptions() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get addr => $_getSZ(1);
  @$pb.TagNumber(2)
  set addr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddr() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get roomCreated => $_getBF(2);
  @$pb.TagNumber(3)
  set roomCreated($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomCreated() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomCreated() => clearField(3);
}

class JoinRoomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JoinRoomRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rejoin')
    ..aOM<RoomOptions>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomOptions', subBuilder: RoomOptions.create)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expectAttr', $pb.PbFieldType.OY)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'piggybackPeerId')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createOnNotFound')
    ..hasRequiredFields = false
  ;

  JoinRoomRequest._() : super();
  factory JoinRoomRequest({
    $core.bool? rejoin,
    RoomOptions? roomOptions,
    $core.List<$core.int>? expectAttr,
    $core.String? piggybackPeerId,
    $core.bool? createOnNotFound,
  }) {
    final _result = create();
    if (rejoin != null) {
      _result.rejoin = rejoin;
    }
    if (roomOptions != null) {
      _result.roomOptions = roomOptions;
    }
    if (expectAttr != null) {
      _result.expectAttr = expectAttr;
    }
    if (piggybackPeerId != null) {
      _result.piggybackPeerId = piggybackPeerId;
    }
    if (createOnNotFound != null) {
      _result.createOnNotFound = createOnNotFound;
    }
    return _result;
  }
  factory JoinRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinRoomRequest clone() => JoinRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinRoomRequest copyWith(void Function(JoinRoomRequest) updates) => super.copyWith((message) => updates(message as JoinRoomRequest)) as JoinRoomRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinRoomRequest create() => JoinRoomRequest._();
  JoinRoomRequest createEmptyInstance() => create();
  static $pb.PbList<JoinRoomRequest> createRepeated() => $pb.PbList<JoinRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static JoinRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinRoomRequest>(create);
  static JoinRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get rejoin => $_getBF(0);
  @$pb.TagNumber(1)
  set rejoin($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRejoin() => $_has(0);
  @$pb.TagNumber(1)
  void clearRejoin() => clearField(1);

  @$pb.TagNumber(2)
  RoomOptions get roomOptions => $_getN(1);
  @$pb.TagNumber(2)
  set roomOptions(RoomOptions v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomOptions() => clearField(2);
  @$pb.TagNumber(2)
  RoomOptions ensureRoomOptions() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get expectAttr => $_getN(2);
  @$pb.TagNumber(3)
  set expectAttr($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpectAttr() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpectAttr() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get piggybackPeerId => $_getSZ(3);
  @$pb.TagNumber(4)
  set piggybackPeerId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPiggybackPeerId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPiggybackPeerId() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get createOnNotFound => $_getBF(4);
  @$pb.TagNumber(5)
  set createOnNotFound($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreateOnNotFound() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreateOnNotFound() => clearField(5);
}

class JoinRoomResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JoinRoomResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOM<RoomOptions>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomOptions', subBuilder: RoomOptions.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addr')
    ..hasRequiredFields = false
  ;

  JoinRoomResponse._() : super();
  factory JoinRoomResponse({
    RoomOptions? roomOptions,
    $core.String? addr,
  }) {
    final _result = create();
    if (roomOptions != null) {
      _result.roomOptions = roomOptions;
    }
    if (addr != null) {
      _result.addr = addr;
    }
    return _result;
  }
  factory JoinRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinRoomResponse clone() => JoinRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinRoomResponse copyWith(void Function(JoinRoomResponse) updates) => super.copyWith((message) => updates(message as JoinRoomResponse)) as JoinRoomResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinRoomResponse create() => JoinRoomResponse._();
  JoinRoomResponse createEmptyInstance() => create();
  static $pb.PbList<JoinRoomResponse> createRepeated() => $pb.PbList<JoinRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static JoinRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinRoomResponse>(create);
  static JoinRoomResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RoomOptions get roomOptions => $_getN(0);
  @$pb.TagNumber(1)
  set roomOptions(RoomOptions v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomOptions() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomOptions() => clearField(1);
  @$pb.TagNumber(1)
  RoomOptions ensureRoomOptions() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get addr => $_getSZ(1);
  @$pb.TagNumber(2)
  set addr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddr() => clearField(2);
}

class JoinRoomNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JoinRoomNotification', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOM<RoomMember>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'member', subBuilder: RoomMember.create)
    ..hasRequiredFields = false
  ;

  JoinRoomNotification._() : super();
  factory JoinRoomNotification({
    RoomMember? member,
  }) {
    final _result = create();
    if (member != null) {
      _result.member = member;
    }
    return _result;
  }
  factory JoinRoomNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinRoomNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinRoomNotification clone() => JoinRoomNotification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinRoomNotification copyWith(void Function(JoinRoomNotification) updates) => super.copyWith((message) => updates(message as JoinRoomNotification)) as JoinRoomNotification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinRoomNotification create() => JoinRoomNotification._();
  JoinRoomNotification createEmptyInstance() => create();
  static $pb.PbList<JoinRoomNotification> createRepeated() => $pb.PbList<JoinRoomNotification>();
  @$core.pragma('dart2js:noInline')
  static JoinRoomNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinRoomNotification>(create);
  static JoinRoomNotification? _defaultInstance;

  @$pb.TagNumber(1)
  RoomMember get member => $_getN(0);
  @$pb.TagNumber(1)
  set member(RoomMember v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearMember() => clearField(1);
  @$pb.TagNumber(1)
  RoomMember ensureMember() => $_ensure(0);
}

class LeftRoomNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeftRoomNotification', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actorId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  LeftRoomNotification._() : super();
  factory LeftRoomNotification({
    $core.int? actorId,
  }) {
    final _result = create();
    if (actorId != null) {
      _result.actorId = actorId;
    }
    return _result;
  }
  factory LeftRoomNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeftRoomNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeftRoomNotification clone() => LeftRoomNotification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeftRoomNotification copyWith(void Function(LeftRoomNotification) updates) => super.copyWith((message) => updates(message as LeftRoomNotification)) as LeftRoomNotification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeftRoomNotification create() => LeftRoomNotification._();
  LeftRoomNotification createEmptyInstance() => create();
  static $pb.PbList<LeftRoomNotification> createRepeated() => $pb.PbList<LeftRoomNotification>();
  @$core.pragma('dart2js:noInline')
  static LeftRoomNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeftRoomNotification>(create);
  static LeftRoomNotification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get actorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set actorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasActorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorId() => clearField(1);
}

class KickMemberRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KickMemberRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetActorId', $pb.PbFieldType.O3)
    ..aOM<AppInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appInfo', subBuilder: AppInfo.create)
    ..hasRequiredFields = false
  ;

  KickMemberRequest._() : super();
  factory KickMemberRequest({
    $core.int? targetActorId,
    AppInfo? appInfo,
  }) {
    final _result = create();
    if (targetActorId != null) {
      _result.targetActorId = targetActorId;
    }
    if (appInfo != null) {
      _result.appInfo = appInfo;
    }
    return _result;
  }
  factory KickMemberRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KickMemberRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KickMemberRequest clone() => KickMemberRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KickMemberRequest copyWith(void Function(KickMemberRequest) updates) => super.copyWith((message) => updates(message as KickMemberRequest)) as KickMemberRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KickMemberRequest create() => KickMemberRequest._();
  KickMemberRequest createEmptyInstance() => create();
  static $pb.PbList<KickMemberRequest> createRepeated() => $pb.PbList<KickMemberRequest>();
  @$core.pragma('dart2js:noInline')
  static KickMemberRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KickMemberRequest>(create);
  static KickMemberRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get targetActorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set targetActorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTargetActorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetActorId() => clearField(1);

  @$pb.TagNumber(2)
  AppInfo get appInfo => $_getN(1);
  @$pb.TagNumber(2)
  set appInfo(AppInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppInfo() => clearField(2);
  @$pb.TagNumber(2)
  AppInfo ensureAppInfo() => $_ensure(1);
}

class KickMemberResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KickMemberResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetActorId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  KickMemberResponse._() : super();
  factory KickMemberResponse({
    $core.int? targetActorId,
  }) {
    final _result = create();
    if (targetActorId != null) {
      _result.targetActorId = targetActorId;
    }
    return _result;
  }
  factory KickMemberResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KickMemberResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KickMemberResponse clone() => KickMemberResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KickMemberResponse copyWith(void Function(KickMemberResponse) updates) => super.copyWith((message) => updates(message as KickMemberResponse)) as KickMemberResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KickMemberResponse create() => KickMemberResponse._();
  KickMemberResponse createEmptyInstance() => create();
  static $pb.PbList<KickMemberResponse> createRepeated() => $pb.PbList<KickMemberResponse>();
  @$core.pragma('dart2js:noInline')
  static KickMemberResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KickMemberResponse>(create);
  static KickMemberResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get targetActorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set targetActorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTargetActorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetActorId() => clearField(1);
}

class UpdatePropertyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePropertyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetActorId', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expectAttr', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attr', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UpdatePropertyRequest._() : super();
  factory UpdatePropertyRequest({
    $core.int? targetActorId,
    $core.List<$core.int>? expectAttr,
    $core.List<$core.int>? attr,
  }) {
    final _result = create();
    if (targetActorId != null) {
      _result.targetActorId = targetActorId;
    }
    if (expectAttr != null) {
      _result.expectAttr = expectAttr;
    }
    if (attr != null) {
      _result.attr = attr;
    }
    return _result;
  }
  factory UpdatePropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyRequest clone() => UpdatePropertyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyRequest copyWith(void Function(UpdatePropertyRequest) updates) => super.copyWith((message) => updates(message as UpdatePropertyRequest)) as UpdatePropertyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyRequest create() => UpdatePropertyRequest._();
  UpdatePropertyRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyRequest> createRepeated() => $pb.PbList<UpdatePropertyRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyRequest>(create);
  static UpdatePropertyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get targetActorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set targetActorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTargetActorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetActorId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get expectAttr => $_getN(1);
  @$pb.TagNumber(2)
  set expectAttr($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpectAttr() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpectAttr() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get attr => $_getN(2);
  @$pb.TagNumber(3)
  set attr($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAttr() => $_has(2);
  @$pb.TagNumber(3)
  void clearAttr() => clearField(3);
}

class UpdatePropertyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePropertyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attr', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actorId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UpdatePropertyResponse._() : super();
  factory UpdatePropertyResponse({
    $core.List<$core.int>? attr,
    $core.int? actorId,
  }) {
    final _result = create();
    if (attr != null) {
      _result.attr = attr;
    }
    if (actorId != null) {
      _result.actorId = actorId;
    }
    return _result;
  }
  factory UpdatePropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyResponse clone() => UpdatePropertyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyResponse copyWith(void Function(UpdatePropertyResponse) updates) => super.copyWith((message) => updates(message as UpdatePropertyResponse)) as UpdatePropertyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyResponse create() => UpdatePropertyResponse._();
  UpdatePropertyResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyResponse> createRepeated() => $pb.PbList<UpdatePropertyResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyResponse>(create);
  static UpdatePropertyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get attr => $_getN(0);
  @$pb.TagNumber(1)
  set attr($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttr() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttr() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get actorId => $_getIZ(1);
  @$pb.TagNumber(2)
  set actorId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);
}

class UpdatePropertyNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePropertyNotification', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attr', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actorId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UpdatePropertyNotification._() : super();
  factory UpdatePropertyNotification({
    $core.List<$core.int>? attr,
    $core.int? actorId,
  }) {
    final _result = create();
    if (attr != null) {
      _result.attr = attr;
    }
    if (actorId != null) {
      _result.actorId = actorId;
    }
    return _result;
  }
  factory UpdatePropertyNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyNotification clone() => UpdatePropertyNotification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyNotification copyWith(void Function(UpdatePropertyNotification) updates) => super.copyWith((message) => updates(message as UpdatePropertyNotification)) as UpdatePropertyNotification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyNotification create() => UpdatePropertyNotification._();
  UpdatePropertyNotification createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyNotification> createRepeated() => $pb.PbList<UpdatePropertyNotification>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyNotification>(create);
  static UpdatePropertyNotification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get attr => $_getN(0);
  @$pb.TagNumber(1)
  set attr($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttr() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttr() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get actorId => $_getIZ(1);
  @$pb.TagNumber(2)
  set actorId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);
}

class UpdateSysPropertyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateSysPropertyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOM<RoomSystemProperty>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expectSysAttr', subBuilder: RoomSystemProperty.create)
    ..aOM<RoomSystemProperty>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sysAttr', subBuilder: RoomSystemProperty.create)
    ..hasRequiredFields = false
  ;

  UpdateSysPropertyRequest._() : super();
  factory UpdateSysPropertyRequest({
    RoomSystemProperty? expectSysAttr,
    RoomSystemProperty? sysAttr,
  }) {
    final _result = create();
    if (expectSysAttr != null) {
      _result.expectSysAttr = expectSysAttr;
    }
    if (sysAttr != null) {
      _result.sysAttr = sysAttr;
    }
    return _result;
  }
  factory UpdateSysPropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSysPropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSysPropertyRequest clone() => UpdateSysPropertyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSysPropertyRequest copyWith(void Function(UpdateSysPropertyRequest) updates) => super.copyWith((message) => updates(message as UpdateSysPropertyRequest)) as UpdateSysPropertyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateSysPropertyRequest create() => UpdateSysPropertyRequest._();
  UpdateSysPropertyRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSysPropertyRequest> createRepeated() => $pb.PbList<UpdateSysPropertyRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSysPropertyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSysPropertyRequest>(create);
  static UpdateSysPropertyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  RoomSystemProperty get expectSysAttr => $_getN(0);
  @$pb.TagNumber(1)
  set expectSysAttr(RoomSystemProperty v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpectSysAttr() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpectSysAttr() => clearField(1);
  @$pb.TagNumber(1)
  RoomSystemProperty ensureExpectSysAttr() => $_ensure(0);

  @$pb.TagNumber(2)
  RoomSystemProperty get sysAttr => $_getN(1);
  @$pb.TagNumber(2)
  set sysAttr(RoomSystemProperty v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSysAttr() => $_has(1);
  @$pb.TagNumber(2)
  void clearSysAttr() => clearField(2);
  @$pb.TagNumber(2)
  RoomSystemProperty ensureSysAttr() => $_ensure(1);
}

class UpdateSysPropertyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateSysPropertyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOM<RoomSystemProperty>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sysAttr', subBuilder: RoomSystemProperty.create)
    ..hasRequiredFields = false
  ;

  UpdateSysPropertyResponse._() : super();
  factory UpdateSysPropertyResponse({
    RoomSystemProperty? sysAttr,
  }) {
    final _result = create();
    if (sysAttr != null) {
      _result.sysAttr = sysAttr;
    }
    return _result;
  }
  factory UpdateSysPropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSysPropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSysPropertyResponse clone() => UpdateSysPropertyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSysPropertyResponse copyWith(void Function(UpdateSysPropertyResponse) updates) => super.copyWith((message) => updates(message as UpdateSysPropertyResponse)) as UpdateSysPropertyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateSysPropertyResponse create() => UpdateSysPropertyResponse._();
  UpdateSysPropertyResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSysPropertyResponse> createRepeated() => $pb.PbList<UpdateSysPropertyResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSysPropertyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSysPropertyResponse>(create);
  static UpdateSysPropertyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RoomSystemProperty get sysAttr => $_getN(0);
  @$pb.TagNumber(1)
  set sysAttr(RoomSystemProperty v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSysAttr() => $_has(0);
  @$pb.TagNumber(1)
  void clearSysAttr() => clearField(1);
  @$pb.TagNumber(1)
  RoomSystemProperty ensureSysAttr() => $_ensure(0);
}

class UpdateSysPropertyNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateSysPropertyNotification', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOM<RoomSystemProperty>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sysAttr', subBuilder: RoomSystemProperty.create)
    ..hasRequiredFields = false
  ;

  UpdateSysPropertyNotification._() : super();
  factory UpdateSysPropertyNotification({
    RoomSystemProperty? sysAttr,
  }) {
    final _result = create();
    if (sysAttr != null) {
      _result.sysAttr = sysAttr;
    }
    return _result;
  }
  factory UpdateSysPropertyNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSysPropertyNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSysPropertyNotification clone() => UpdateSysPropertyNotification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSysPropertyNotification copyWith(void Function(UpdateSysPropertyNotification) updates) => super.copyWith((message) => updates(message as UpdateSysPropertyNotification)) as UpdateSysPropertyNotification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateSysPropertyNotification create() => UpdateSysPropertyNotification._();
  UpdateSysPropertyNotification createEmptyInstance() => create();
  static $pb.PbList<UpdateSysPropertyNotification> createRepeated() => $pb.PbList<UpdateSysPropertyNotification>();
  @$core.pragma('dart2js:noInline')
  static UpdateSysPropertyNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSysPropertyNotification>(create);
  static UpdateSysPropertyNotification? _defaultInstance;

  @$pb.TagNumber(1)
  RoomSystemProperty get sysAttr => $_getN(0);
  @$pb.TagNumber(1)
  set sysAttr(RoomSystemProperty v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSysAttr() => $_has(0);
  @$pb.TagNumber(1)
  void clearSysAttr() => clearField(1);
  @$pb.TagNumber(1)
  RoomSystemProperty ensureSysAttr() => $_ensure(0);
}

class UpdateMasterClientRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateMasterClientRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterActorId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UpdateMasterClientRequest._() : super();
  factory UpdateMasterClientRequest({
    $core.int? masterActorId,
  }) {
    final _result = create();
    if (masterActorId != null) {
      _result.masterActorId = masterActorId;
    }
    return _result;
  }
  factory UpdateMasterClientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMasterClientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateMasterClientRequest clone() => UpdateMasterClientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateMasterClientRequest copyWith(void Function(UpdateMasterClientRequest) updates) => super.copyWith((message) => updates(message as UpdateMasterClientRequest)) as UpdateMasterClientRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateMasterClientRequest create() => UpdateMasterClientRequest._();
  UpdateMasterClientRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateMasterClientRequest> createRepeated() => $pb.PbList<UpdateMasterClientRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateMasterClientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateMasterClientRequest>(create);
  static UpdateMasterClientRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get masterActorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set masterActorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterActorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterActorId() => clearField(1);
}

class UpdateMasterClientResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateMasterClientResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterActorId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UpdateMasterClientResponse._() : super();
  factory UpdateMasterClientResponse({
    $core.int? masterActorId,
  }) {
    final _result = create();
    if (masterActorId != null) {
      _result.masterActorId = masterActorId;
    }
    return _result;
  }
  factory UpdateMasterClientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMasterClientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateMasterClientResponse clone() => UpdateMasterClientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateMasterClientResponse copyWith(void Function(UpdateMasterClientResponse) updates) => super.copyWith((message) => updates(message as UpdateMasterClientResponse)) as UpdateMasterClientResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateMasterClientResponse create() => UpdateMasterClientResponse._();
  UpdateMasterClientResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateMasterClientResponse> createRepeated() => $pb.PbList<UpdateMasterClientResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateMasterClientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateMasterClientResponse>(create);
  static UpdateMasterClientResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get masterActorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set masterActorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterActorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterActorId() => clearField(1);
}

class UpdateMasterClientNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateMasterClientNotification', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterActorId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UpdateMasterClientNotification._() : super();
  factory UpdateMasterClientNotification({
    $core.int? masterActorId,
  }) {
    final _result = create();
    if (masterActorId != null) {
      _result.masterActorId = masterActorId;
    }
    return _result;
  }
  factory UpdateMasterClientNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMasterClientNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateMasterClientNotification clone() => UpdateMasterClientNotification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateMasterClientNotification copyWith(void Function(UpdateMasterClientNotification) updates) => super.copyWith((message) => updates(message as UpdateMasterClientNotification)) as UpdateMasterClientNotification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateMasterClientNotification create() => UpdateMasterClientNotification._();
  UpdateMasterClientNotification createEmptyInstance() => create();
  static $pb.PbList<UpdateMasterClientNotification> createRepeated() => $pb.PbList<UpdateMasterClientNotification>();
  @$core.pragma('dart2js:noInline')
  static UpdateMasterClientNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateMasterClientNotification>(create);
  static UpdateMasterClientNotification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get masterActorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set masterActorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterActorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterActorId() => clearField(1);
}

enum RoomNotification_Notification {
  joinRoom, 
  updateProperty, 
  updateSysProperty, 
  updateMasterClient, 
  leftRoom, 
  notSet
}

class RoomNotification extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RoomNotification_Notification> _RoomNotification_NotificationByTag = {
    20 : RoomNotification_Notification.joinRoom,
    21 : RoomNotification_Notification.updateProperty,
    22 : RoomNotification_Notification.updateSysProperty,
    23 : RoomNotification_Notification.updateMasterClient,
    24 : RoomNotification_Notification.leftRoom,
    0 : RoomNotification_Notification.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoomNotification', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..oo(0, [20, 21, 22, 23, 24])
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initByActor', $pb.PbFieldType.O3)
    ..aOM<AppInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appInfo', subBuilder: AppInfo.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'byMaster')
    ..aOM<JoinRoomNotification>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'joinRoom', subBuilder: JoinRoomNotification.create)
    ..aOM<UpdatePropertyNotification>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateProperty', subBuilder: UpdatePropertyNotification.create)
    ..aOM<UpdateSysPropertyNotification>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateSysProperty', subBuilder: UpdateSysPropertyNotification.create)
    ..aOM<UpdateMasterClientNotification>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMasterClient', subBuilder: UpdateMasterClientNotification.create)
    ..aOM<LeftRoomNotification>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftRoom', subBuilder: LeftRoomNotification.create)
    ..hasRequiredFields = false
  ;

  RoomNotification._() : super();
  factory RoomNotification({
    $core.int? initByActor,
    AppInfo? appInfo,
    $core.bool? byMaster,
    JoinRoomNotification? joinRoom,
    UpdatePropertyNotification? updateProperty,
    UpdateSysPropertyNotification? updateSysProperty,
    UpdateMasterClientNotification? updateMasterClient,
    LeftRoomNotification? leftRoom,
  }) {
    final _result = create();
    if (initByActor != null) {
      _result.initByActor = initByActor;
    }
    if (appInfo != null) {
      _result.appInfo = appInfo;
    }
    if (byMaster != null) {
      _result.byMaster = byMaster;
    }
    if (joinRoom != null) {
      _result.joinRoom = joinRoom;
    }
    if (updateProperty != null) {
      _result.updateProperty = updateProperty;
    }
    if (updateSysProperty != null) {
      _result.updateSysProperty = updateSysProperty;
    }
    if (updateMasterClient != null) {
      _result.updateMasterClient = updateMasterClient;
    }
    if (leftRoom != null) {
      _result.leftRoom = leftRoom;
    }
    return _result;
  }
  factory RoomNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomNotification clone() => RoomNotification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomNotification copyWith(void Function(RoomNotification) updates) => super.copyWith((message) => updates(message as RoomNotification)) as RoomNotification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomNotification create() => RoomNotification._();
  RoomNotification createEmptyInstance() => create();
  static $pb.PbList<RoomNotification> createRepeated() => $pb.PbList<RoomNotification>();
  @$core.pragma('dart2js:noInline')
  static RoomNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomNotification>(create);
  static RoomNotification? _defaultInstance;

  RoomNotification_Notification whichNotification() => _RoomNotification_NotificationByTag[$_whichOneof(0)]!;
  void clearNotification() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get initByActor => $_getIZ(0);
  @$pb.TagNumber(1)
  set initByActor($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInitByActor() => $_has(0);
  @$pb.TagNumber(1)
  void clearInitByActor() => clearField(1);

  @$pb.TagNumber(3)
  AppInfo get appInfo => $_getN(1);
  @$pb.TagNumber(3)
  set appInfo(AppInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppInfo() => $_has(1);
  @$pb.TagNumber(3)
  void clearAppInfo() => clearField(3);
  @$pb.TagNumber(3)
  AppInfo ensureAppInfo() => $_ensure(1);

  @$pb.TagNumber(4)
  $core.bool get byMaster => $_getBF(2);
  @$pb.TagNumber(4)
  set byMaster($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasByMaster() => $_has(2);
  @$pb.TagNumber(4)
  void clearByMaster() => clearField(4);

  @$pb.TagNumber(20)
  JoinRoomNotification get joinRoom => $_getN(3);
  @$pb.TagNumber(20)
  set joinRoom(JoinRoomNotification v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasJoinRoom() => $_has(3);
  @$pb.TagNumber(20)
  void clearJoinRoom() => clearField(20);
  @$pb.TagNumber(20)
  JoinRoomNotification ensureJoinRoom() => $_ensure(3);

  @$pb.TagNumber(21)
  UpdatePropertyNotification get updateProperty => $_getN(4);
  @$pb.TagNumber(21)
  set updateProperty(UpdatePropertyNotification v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasUpdateProperty() => $_has(4);
  @$pb.TagNumber(21)
  void clearUpdateProperty() => clearField(21);
  @$pb.TagNumber(21)
  UpdatePropertyNotification ensureUpdateProperty() => $_ensure(4);

  @$pb.TagNumber(22)
  UpdateSysPropertyNotification get updateSysProperty => $_getN(5);
  @$pb.TagNumber(22)
  set updateSysProperty(UpdateSysPropertyNotification v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasUpdateSysProperty() => $_has(5);
  @$pb.TagNumber(22)
  void clearUpdateSysProperty() => clearField(22);
  @$pb.TagNumber(22)
  UpdateSysPropertyNotification ensureUpdateSysProperty() => $_ensure(5);

  @$pb.TagNumber(23)
  UpdateMasterClientNotification get updateMasterClient => $_getN(6);
  @$pb.TagNumber(23)
  set updateMasterClient(UpdateMasterClientNotification v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasUpdateMasterClient() => $_has(6);
  @$pb.TagNumber(23)
  void clearUpdateMasterClient() => clearField(23);
  @$pb.TagNumber(23)
  UpdateMasterClientNotification ensureUpdateMasterClient() => $_ensure(6);

  @$pb.TagNumber(24)
  LeftRoomNotification get leftRoom => $_getN(7);
  @$pb.TagNumber(24)
  set leftRoom(LeftRoomNotification v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasLeftRoom() => $_has(7);
  @$pb.TagNumber(24)
  void clearLeftRoom() => clearField(24);
  @$pb.TagNumber(24)
  LeftRoomNotification ensureLeftRoom() => $_ensure(7);
}

class DirectCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DirectCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cached')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiverGroup', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cachingOption', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventOptions', $pb.PbFieldType.O3)
    ..p<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toActorIds', $pb.PbFieldType.P3)
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', $pb.PbFieldType.OY)
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromActorId', $pb.PbFieldType.O3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'i', $pb.PbFieldType.O3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interestGroup', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  DirectCommand._() : super();
  factory DirectCommand({
    $core.bool? cached,
    $core.int? eventId,
    $core.int? receiverGroup,
    $core.int? cachingOption,
    $core.int? eventOptions,
    $core.Iterable<$core.int>? toActorIds,
    $core.List<$core.int>? msg,
    $fixnum.Int64? timestamp,
    $core.int? fromActorId,
    $core.int? i,
    $core.int? interestGroup,
  }) {
    final _result = create();
    if (cached != null) {
      _result.cached = cached;
    }
    if (eventId != null) {
      _result.eventId = eventId;
    }
    if (receiverGroup != null) {
      _result.receiverGroup = receiverGroup;
    }
    if (cachingOption != null) {
      _result.cachingOption = cachingOption;
    }
    if (eventOptions != null) {
      _result.eventOptions = eventOptions;
    }
    if (toActorIds != null) {
      _result.toActorIds.addAll(toActorIds);
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (fromActorId != null) {
      _result.fromActorId = fromActorId;
    }
    if (i != null) {
      _result.i = i;
    }
    if (interestGroup != null) {
      _result.interestGroup = interestGroup;
    }
    return _result;
  }
  factory DirectCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DirectCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DirectCommand clone() => DirectCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DirectCommand copyWith(void Function(DirectCommand) updates) => super.copyWith((message) => updates(message as DirectCommand)) as DirectCommand; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DirectCommand create() => DirectCommand._();
  DirectCommand createEmptyInstance() => create();
  static $pb.PbList<DirectCommand> createRepeated() => $pb.PbList<DirectCommand>();
  @$core.pragma('dart2js:noInline')
  static DirectCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DirectCommand>(create);
  static DirectCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get cached => $_getBF(0);
  @$pb.TagNumber(1)
  set cached($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCached() => $_has(0);
  @$pb.TagNumber(1)
  void clearCached() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get eventId => $_getIZ(1);
  @$pb.TagNumber(2)
  set eventId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get receiverGroup => $_getIZ(2);
  @$pb.TagNumber(3)
  set receiverGroup($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceiverGroup() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceiverGroup() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get cachingOption => $_getIZ(3);
  @$pb.TagNumber(4)
  set cachingOption($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCachingOption() => $_has(3);
  @$pb.TagNumber(4)
  void clearCachingOption() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get eventOptions => $_getIZ(4);
  @$pb.TagNumber(5)
  set eventOptions($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEventOptions() => $_has(4);
  @$pb.TagNumber(5)
  void clearEventOptions() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get toActorIds => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.int> get msg => $_getN(6);
  @$pb.TagNumber(7)
  set msg($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMsg() => $_has(6);
  @$pb.TagNumber(7)
  void clearMsg() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get timestamp => $_getI64(7);
  @$pb.TagNumber(8)
  set timestamp($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimestamp() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get fromActorId => $_getIZ(8);
  @$pb.TagNumber(9)
  set fromActorId($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFromActorId() => $_has(8);
  @$pb.TagNumber(9)
  void clearFromActorId() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get i => $_getIZ(9);
  @$pb.TagNumber(10)
  set i($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasI() => $_has(9);
  @$pb.TagNumber(10)
  void clearI() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get interestGroup => $_getIZ(10);
  @$pb.TagNumber(11)
  set interestGroup($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasInterestGroup() => $_has(10);
  @$pb.TagNumber(11)
  void clearInterestGroup() => clearField(11);
}

class AckCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AckCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'i', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AckCommand._() : super();
  factory AckCommand({
    $fixnum.Int64? timestamp,
    $core.int? i,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (i != null) {
      _result.i = i;
    }
    return _result;
  }
  factory AckCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AckCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AckCommand clone() => AckCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AckCommand copyWith(void Function(AckCommand) updates) => super.copyWith((message) => updates(message as AckCommand)) as AckCommand; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AckCommand create() => AckCommand._();
  AckCommand createEmptyInstance() => create();
  static $pb.PbList<AckCommand> createRepeated() => $pb.PbList<AckCommand>();
  @$core.pragma('dart2js:noInline')
  static AckCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AckCommand>(create);
  static AckCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(11)
  $core.int get i => $_getIZ(1);
  @$pb.TagNumber(11)
  set i($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(11)
  $core.bool hasI() => $_has(1);
  @$pb.TagNumber(11)
  void clearI() => clearField(11);
}

class EventsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EventsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', $pb.PbFieldType.OY)
    ..aOM<$0.Int32Value>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actorId', subBuilder: $0.Int32Value.create)
    ..aOM<$0.Int32Value>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventId', subBuilder: $0.Int32Value.create)
    ..hasRequiredFields = false
  ;

  EventsRequest._() : super();
  factory EventsRequest({
    $core.List<$core.int>? msg,
    $0.Int32Value? actorId,
    $0.Int32Value? eventId,
  }) {
    final _result = create();
    if (msg != null) {
      _result.msg = msg;
    }
    if (actorId != null) {
      _result.actorId = actorId;
    }
    if (eventId != null) {
      _result.eventId = eventId;
    }
    return _result;
  }
  factory EventsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventsRequest clone() => EventsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventsRequest copyWith(void Function(EventsRequest) updates) => super.copyWith((message) => updates(message as EventsRequest)) as EventsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventsRequest create() => EventsRequest._();
  EventsRequest createEmptyInstance() => create();
  static $pb.PbList<EventsRequest> createRepeated() => $pb.PbList<EventsRequest>();
  @$core.pragma('dart2js:noInline')
  static EventsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventsRequest>(create);
  static EventsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get msg => $_getN(0);
  @$pb.TagNumber(1)
  set msg($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);

  @$pb.TagNumber(2)
  $0.Int32Value get actorId => $_getN(1);
  @$pb.TagNumber(2)
  set actorId($0.Int32Value v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasActorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorId() => clearField(2);
  @$pb.TagNumber(2)
  $0.Int32Value ensureActorId() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Int32Value get eventId => $_getN(2);
  @$pb.TagNumber(3)
  set eventId($0.Int32Value v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEventId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEventId() => clearField(3);
  @$pb.TagNumber(3)
  $0.Int32Value ensureEventId() => $_ensure(2);
}

class EventsCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EventsCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..pc<DirectCommand>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'events', $pb.PbFieldType.PM, subBuilder: DirectCommand.create)
    ..hasRequiredFields = false
  ;

  EventsCommand._() : super();
  factory EventsCommand({
    $core.Iterable<DirectCommand>? events,
  }) {
    final _result = create();
    if (events != null) {
      _result.events.addAll(events);
    }
    return _result;
  }
  factory EventsCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventsCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventsCommand clone() => EventsCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventsCommand copyWith(void Function(EventsCommand) updates) => super.copyWith((message) => updates(message as EventsCommand)) as EventsCommand; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventsCommand create() => EventsCommand._();
  EventsCommand createEmptyInstance() => create();
  static $pb.PbList<EventsCommand> createRepeated() => $pb.PbList<EventsCommand>();
  @$core.pragma('dart2js:noInline')
  static EventsCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventsCommand>(create);
  static EventsCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DirectCommand> get events => $_getList(0);
}

class InterestGroups extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InterestGroups', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disabledGroups', $pb.PbFieldType.P3)
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enabledGroups', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  InterestGroups._() : super();
  factory InterestGroups({
    $core.Iterable<$core.int>? disabledGroups,
    $core.Iterable<$core.int>? enabledGroups,
  }) {
    final _result = create();
    if (disabledGroups != null) {
      _result.disabledGroups.addAll(disabledGroups);
    }
    if (enabledGroups != null) {
      _result.enabledGroups.addAll(enabledGroups);
    }
    return _result;
  }
  factory InterestGroups.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InterestGroups.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InterestGroups clone() => InterestGroups()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InterestGroups copyWith(void Function(InterestGroups) updates) => super.copyWith((message) => updates(message as InterestGroups)) as InterestGroups; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InterestGroups create() => InterestGroups._();
  InterestGroups createEmptyInstance() => create();
  static $pb.PbList<InterestGroups> createRepeated() => $pb.PbList<InterestGroups>();
  @$core.pragma('dart2js:noInline')
  static InterestGroups getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InterestGroups>(create);
  static InterestGroups? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get disabledGroups => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get enabledGroups => $_getList(1);
}

class JoinLobbyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JoinLobbyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lobbyId')
    ..hasRequiredFields = false
  ;

  JoinLobbyRequest._() : super();
  factory JoinLobbyRequest({
    $core.String? lobbyId,
  }) {
    final _result = create();
    if (lobbyId != null) {
      _result.lobbyId = lobbyId;
    }
    return _result;
  }
  factory JoinLobbyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JoinLobbyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JoinLobbyRequest clone() => JoinLobbyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JoinLobbyRequest copyWith(void Function(JoinLobbyRequest) updates) => super.copyWith((message) => updates(message as JoinLobbyRequest)) as JoinLobbyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JoinLobbyRequest create() => JoinLobbyRequest._();
  JoinLobbyRequest createEmptyInstance() => create();
  static $pb.PbList<JoinLobbyRequest> createRepeated() => $pb.PbList<JoinLobbyRequest>();
  @$core.pragma('dart2js:noInline')
  static JoinLobbyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JoinLobbyRequest>(create);
  static JoinLobbyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lobbyId => $_getSZ(0);
  @$pb.TagNumber(1)
  set lobbyId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLobbyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLobbyId() => clearField(1);
}

class RoomListCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoomListCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..pc<RoomOptions>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list', $pb.PbFieldType.PM, subBuilder: RoomOptions.create)
    ..hasRequiredFields = false
  ;

  RoomListCommand._() : super();
  factory RoomListCommand({
    $core.Iterable<RoomOptions>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }
  factory RoomListCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomListCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomListCommand clone() => RoomListCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomListCommand copyWith(void Function(RoomListCommand) updates) => super.copyWith((message) => updates(message as RoomListCommand)) as RoomListCommand; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoomListCommand create() => RoomListCommand._();
  RoomListCommand createEmptyInstance() => create();
  static $pb.PbList<RoomListCommand> createRepeated() => $pb.PbList<RoomListCommand>();
  @$core.pragma('dart2js:noInline')
  static RoomListCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomListCommand>(create);
  static RoomListCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RoomOptions> get list => $_getList(0);
}

class AppStatistic extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppStatistic', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countOfRooms', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countOfPlayersOnRouter', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countOfPlayersInRooms', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countOfPlayers', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AppStatistic._() : super();
  factory AppStatistic({
    $core.int? countOfRooms,
    $core.int? countOfPlayersOnRouter,
    $core.int? countOfPlayersInRooms,
    $core.int? countOfPlayers,
  }) {
    final _result = create();
    if (countOfRooms != null) {
      _result.countOfRooms = countOfRooms;
    }
    if (countOfPlayersOnRouter != null) {
      _result.countOfPlayersOnRouter = countOfPlayersOnRouter;
    }
    if (countOfPlayersInRooms != null) {
      _result.countOfPlayersInRooms = countOfPlayersInRooms;
    }
    if (countOfPlayers != null) {
      _result.countOfPlayers = countOfPlayers;
    }
    return _result;
  }
  factory AppStatistic.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppStatistic.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppStatistic clone() => AppStatistic()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppStatistic copyWith(void Function(AppStatistic) updates) => super.copyWith((message) => updates(message as AppStatistic)) as AppStatistic; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppStatistic create() => AppStatistic._();
  AppStatistic createEmptyInstance() => create();
  static $pb.PbList<AppStatistic> createRepeated() => $pb.PbList<AppStatistic>();
  @$core.pragma('dart2js:noInline')
  static AppStatistic getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppStatistic>(create);
  static AppStatistic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get countOfRooms => $_getIZ(0);
  @$pb.TagNumber(1)
  set countOfRooms($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountOfRooms() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountOfRooms() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get countOfPlayersOnRouter => $_getIZ(1);
  @$pb.TagNumber(2)
  set countOfPlayersOnRouter($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountOfPlayersOnRouter() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountOfPlayersOnRouter() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get countOfPlayersInRooms => $_getIZ(2);
  @$pb.TagNumber(3)
  set countOfPlayersInRooms($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCountOfPlayersInRooms() => $_has(2);
  @$pb.TagNumber(3)
  void clearCountOfPlayersInRooms() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get countOfPlayers => $_getIZ(3);
  @$pb.TagNumber(4)
  set countOfPlayers($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCountOfPlayers() => $_has(3);
  @$pb.TagNumber(4)
  void clearCountOfPlayers() => clearField(4);
}

class StatisticCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatisticCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOM<AppStatistic>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appStats', subBuilder: AppStatistic.create)
    ..hasRequiredFields = false
  ;

  StatisticCommand._() : super();
  factory StatisticCommand({
    AppStatistic? appStats,
  }) {
    final _result = create();
    if (appStats != null) {
      _result.appStats = appStats;
    }
    return _result;
  }
  factory StatisticCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatisticCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatisticCommand clone() => StatisticCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatisticCommand copyWith(void Function(StatisticCommand) updates) => super.copyWith((message) => updates(message as StatisticCommand)) as StatisticCommand; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatisticCommand create() => StatisticCommand._();
  StatisticCommand createEmptyInstance() => create();
  static $pb.PbList<StatisticCommand> createRepeated() => $pb.PbList<StatisticCommand>();
  @$core.pragma('dart2js:noInline')
  static StatisticCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatisticCommand>(create);
  static StatisticCommand? _defaultInstance;

  @$pb.TagNumber(1)
  AppStatistic get appStats => $_getN(0);
  @$pb.TagNumber(1)
  set appStats(AppStatistic v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppStats() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppStats() => clearField(1);
  @$pb.TagNumber(1)
  AppStatistic ensureAppStats() => $_ensure(0);
}

class ErrorCommand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ErrorCommand', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..aOM<ErrorInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorInfo', subBuilder: ErrorInfo.create)
    ..hasRequiredFields = false
  ;

  ErrorCommand._() : super();
  factory ErrorCommand({
    ErrorInfo? errorInfo,
  }) {
    final _result = create();
    if (errorInfo != null) {
      _result.errorInfo = errorInfo;
    }
    return _result;
  }
  factory ErrorCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrorCommand clone() => ErrorCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrorCommand copyWith(void Function(ErrorCommand) updates) => super.copyWith((message) => updates(message as ErrorCommand)) as ErrorCommand; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ErrorCommand create() => ErrorCommand._();
  ErrorCommand createEmptyInstance() => create();
  static $pb.PbList<ErrorCommand> createRepeated() => $pb.PbList<ErrorCommand>();
  @$core.pragma('dart2js:noInline')
  static ErrorCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorCommand>(create);
  static ErrorCommand? _defaultInstance;

  @$pb.TagNumber(1)
  ErrorInfo get errorInfo => $_getN(0);
  @$pb.TagNumber(1)
  set errorInfo(ErrorInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrorInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrorInfo() => clearField(1);
  @$pb.TagNumber(1)
  ErrorInfo ensureErrorInfo() => $_ensure(0);
}

enum RequestMessage_Request {
  sessionOpen, 
  createRoom, 
  joinRoom, 
  updateProperty, 
  updateSysProperty, 
  updateMasterClient, 
  kickMember, 
  events, 
  interestGroups, 
  joinLobby, 
  notSet
}

class RequestMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RequestMessage_Request> _RequestMessage_RequestByTag = {
    20 : RequestMessage_Request.sessionOpen,
    21 : RequestMessage_Request.createRoom,
    22 : RequestMessage_Request.joinRoom,
    23 : RequestMessage_Request.updateProperty,
    24 : RequestMessage_Request.updateSysProperty,
    25 : RequestMessage_Request.updateMasterClient,
    26 : RequestMessage_Request.kickMember,
    27 : RequestMessage_Request.events,
    28 : RequestMessage_Request.interestGroups,
    54 : RequestMessage_Request.joinLobby,
    0 : RequestMessage_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..oo(0, [20, 21, 22, 23, 24, 25, 26, 27, 28, 54])
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'i', $pb.PbFieldType.O3)
    ..aOM<SessionOpenRequest>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionOpen', subBuilder: SessionOpenRequest.create)
    ..aOM<CreateRoomRequest>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createRoom', subBuilder: CreateRoomRequest.create)
    ..aOM<JoinRoomRequest>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'joinRoom', subBuilder: JoinRoomRequest.create)
    ..aOM<UpdatePropertyRequest>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateProperty', subBuilder: UpdatePropertyRequest.create)
    ..aOM<UpdateSysPropertyRequest>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateSysProperty', subBuilder: UpdateSysPropertyRequest.create)
    ..aOM<UpdateMasterClientRequest>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMasterClient', subBuilder: UpdateMasterClientRequest.create)
    ..aOM<KickMemberRequest>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kickMember', subBuilder: KickMemberRequest.create)
    ..aOM<EventsRequest>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'events', subBuilder: EventsRequest.create)
    ..aOM<InterestGroups>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interestGroups', subBuilder: InterestGroups.create)
    ..aOM<JoinLobbyRequest>(54, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'joinLobby', subBuilder: JoinLobbyRequest.create)
    ..hasRequiredFields = false
  ;

  RequestMessage._() : super();
  factory RequestMessage({
    $core.int? i,
    SessionOpenRequest? sessionOpen,
    CreateRoomRequest? createRoom,
    JoinRoomRequest? joinRoom,
    UpdatePropertyRequest? updateProperty,
    UpdateSysPropertyRequest? updateSysProperty,
    UpdateMasterClientRequest? updateMasterClient,
    KickMemberRequest? kickMember,
    EventsRequest? events,
    InterestGroups? interestGroups,
    JoinLobbyRequest? joinLobby,
  }) {
    final _result = create();
    if (i != null) {
      _result.i = i;
    }
    if (sessionOpen != null) {
      _result.sessionOpen = sessionOpen;
    }
    if (createRoom != null) {
      _result.createRoom = createRoom;
    }
    if (joinRoom != null) {
      _result.joinRoom = joinRoom;
    }
    if (updateProperty != null) {
      _result.updateProperty = updateProperty;
    }
    if (updateSysProperty != null) {
      _result.updateSysProperty = updateSysProperty;
    }
    if (updateMasterClient != null) {
      _result.updateMasterClient = updateMasterClient;
    }
    if (kickMember != null) {
      _result.kickMember = kickMember;
    }
    if (events != null) {
      _result.events = events;
    }
    if (interestGroups != null) {
      _result.interestGroups = interestGroups;
    }
    if (joinLobby != null) {
      _result.joinLobby = joinLobby;
    }
    return _result;
  }
  factory RequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestMessage clone() => RequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestMessage copyWith(void Function(RequestMessage) updates) => super.copyWith((message) => updates(message as RequestMessage)) as RequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestMessage create() => RequestMessage._();
  RequestMessage createEmptyInstance() => create();
  static $pb.PbList<RequestMessage> createRepeated() => $pb.PbList<RequestMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestMessage>(create);
  static RequestMessage? _defaultInstance;

  RequestMessage_Request whichRequest() => _RequestMessage_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get i => $_getIZ(0);
  @$pb.TagNumber(1)
  set i($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasI() => $_has(0);
  @$pb.TagNumber(1)
  void clearI() => clearField(1);

  @$pb.TagNumber(20)
  SessionOpenRequest get sessionOpen => $_getN(1);
  @$pb.TagNumber(20)
  set sessionOpen(SessionOpenRequest v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasSessionOpen() => $_has(1);
  @$pb.TagNumber(20)
  void clearSessionOpen() => clearField(20);
  @$pb.TagNumber(20)
  SessionOpenRequest ensureSessionOpen() => $_ensure(1);

  @$pb.TagNumber(21)
  CreateRoomRequest get createRoom => $_getN(2);
  @$pb.TagNumber(21)
  set createRoom(CreateRoomRequest v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasCreateRoom() => $_has(2);
  @$pb.TagNumber(21)
  void clearCreateRoom() => clearField(21);
  @$pb.TagNumber(21)
  CreateRoomRequest ensureCreateRoom() => $_ensure(2);

  @$pb.TagNumber(22)
  JoinRoomRequest get joinRoom => $_getN(3);
  @$pb.TagNumber(22)
  set joinRoom(JoinRoomRequest v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasJoinRoom() => $_has(3);
  @$pb.TagNumber(22)
  void clearJoinRoom() => clearField(22);
  @$pb.TagNumber(22)
  JoinRoomRequest ensureJoinRoom() => $_ensure(3);

  @$pb.TagNumber(23)
  UpdatePropertyRequest get updateProperty => $_getN(4);
  @$pb.TagNumber(23)
  set updateProperty(UpdatePropertyRequest v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasUpdateProperty() => $_has(4);
  @$pb.TagNumber(23)
  void clearUpdateProperty() => clearField(23);
  @$pb.TagNumber(23)
  UpdatePropertyRequest ensureUpdateProperty() => $_ensure(4);

  @$pb.TagNumber(24)
  UpdateSysPropertyRequest get updateSysProperty => $_getN(5);
  @$pb.TagNumber(24)
  set updateSysProperty(UpdateSysPropertyRequest v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasUpdateSysProperty() => $_has(5);
  @$pb.TagNumber(24)
  void clearUpdateSysProperty() => clearField(24);
  @$pb.TagNumber(24)
  UpdateSysPropertyRequest ensureUpdateSysProperty() => $_ensure(5);

  @$pb.TagNumber(25)
  UpdateMasterClientRequest get updateMasterClient => $_getN(6);
  @$pb.TagNumber(25)
  set updateMasterClient(UpdateMasterClientRequest v) { setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasUpdateMasterClient() => $_has(6);
  @$pb.TagNumber(25)
  void clearUpdateMasterClient() => clearField(25);
  @$pb.TagNumber(25)
  UpdateMasterClientRequest ensureUpdateMasterClient() => $_ensure(6);

  @$pb.TagNumber(26)
  KickMemberRequest get kickMember => $_getN(7);
  @$pb.TagNumber(26)
  set kickMember(KickMemberRequest v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasKickMember() => $_has(7);
  @$pb.TagNumber(26)
  void clearKickMember() => clearField(26);
  @$pb.TagNumber(26)
  KickMemberRequest ensureKickMember() => $_ensure(7);

  @$pb.TagNumber(27)
  EventsRequest get events => $_getN(8);
  @$pb.TagNumber(27)
  set events(EventsRequest v) { setField(27, v); }
  @$pb.TagNumber(27)
  $core.bool hasEvents() => $_has(8);
  @$pb.TagNumber(27)
  void clearEvents() => clearField(27);
  @$pb.TagNumber(27)
  EventsRequest ensureEvents() => $_ensure(8);

  @$pb.TagNumber(28)
  InterestGroups get interestGroups => $_getN(9);
  @$pb.TagNumber(28)
  set interestGroups(InterestGroups v) { setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasInterestGroups() => $_has(9);
  @$pb.TagNumber(28)
  void clearInterestGroups() => clearField(28);
  @$pb.TagNumber(28)
  InterestGroups ensureInterestGroups() => $_ensure(9);

  @$pb.TagNumber(54)
  JoinLobbyRequest get joinLobby => $_getN(10);
  @$pb.TagNumber(54)
  set joinLobby(JoinLobbyRequest v) { setField(54, v); }
  @$pb.TagNumber(54)
  $core.bool hasJoinLobby() => $_has(10);
  @$pb.TagNumber(54)
  void clearJoinLobby() => clearField(54);
  @$pb.TagNumber(54)
  JoinLobbyRequest ensureJoinLobby() => $_ensure(10);
}

enum ResponseMessage_Response {
  createRoom, 
  joinRoom, 
  updateProperty, 
  updateSysProperty, 
  updateMasterClient, 
  kickMember, 
  ack, 
  interestGroups, 
  notSet
}

class ResponseMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ResponseMessage_Response> _ResponseMessage_ResponseByTag = {
    20 : ResponseMessage_Response.createRoom,
    21 : ResponseMessage_Response.joinRoom,
    22 : ResponseMessage_Response.updateProperty,
    23 : ResponseMessage_Response.updateSysProperty,
    24 : ResponseMessage_Response.updateMasterClient,
    25 : ResponseMessage_Response.kickMember,
    26 : ResponseMessage_Response.ack,
    28 : ResponseMessage_Response.interestGroups,
    0 : ResponseMessage_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResponseMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..oo(0, [20, 21, 22, 23, 24, 25, 26, 28])
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'i', $pb.PbFieldType.O3)
    ..aOM<ErrorInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorInfo', subBuilder: ErrorInfo.create)
    ..aOM<CreateRoomResponse>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createRoom', subBuilder: CreateRoomResponse.create)
    ..aOM<JoinRoomResponse>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'joinRoom', subBuilder: JoinRoomResponse.create)
    ..aOM<UpdatePropertyResponse>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateProperty', subBuilder: UpdatePropertyResponse.create)
    ..aOM<UpdateSysPropertyResponse>(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateSysProperty', subBuilder: UpdateSysPropertyResponse.create)
    ..aOM<UpdateMasterClientResponse>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMasterClient', subBuilder: UpdateMasterClientResponse.create)
    ..aOM<KickMemberResponse>(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kickMember', subBuilder: KickMemberResponse.create)
    ..aOM<AckCommand>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ack', subBuilder: AckCommand.create)
    ..aOM<InterestGroups>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interestGroups', subBuilder: InterestGroups.create)
    ..hasRequiredFields = false
  ;

  ResponseMessage._() : super();
  factory ResponseMessage({
    $core.int? i,
    ErrorInfo? errorInfo,
    CreateRoomResponse? createRoom,
    JoinRoomResponse? joinRoom,
    UpdatePropertyResponse? updateProperty,
    UpdateSysPropertyResponse? updateSysProperty,
    UpdateMasterClientResponse? updateMasterClient,
    KickMemberResponse? kickMember,
    AckCommand? ack,
    InterestGroups? interestGroups,
  }) {
    final _result = create();
    if (i != null) {
      _result.i = i;
    }
    if (errorInfo != null) {
      _result.errorInfo = errorInfo;
    }
    if (createRoom != null) {
      _result.createRoom = createRoom;
    }
    if (joinRoom != null) {
      _result.joinRoom = joinRoom;
    }
    if (updateProperty != null) {
      _result.updateProperty = updateProperty;
    }
    if (updateSysProperty != null) {
      _result.updateSysProperty = updateSysProperty;
    }
    if (updateMasterClient != null) {
      _result.updateMasterClient = updateMasterClient;
    }
    if (kickMember != null) {
      _result.kickMember = kickMember;
    }
    if (ack != null) {
      _result.ack = ack;
    }
    if (interestGroups != null) {
      _result.interestGroups = interestGroups;
    }
    return _result;
  }
  factory ResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResponseMessage clone() => ResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResponseMessage copyWith(void Function(ResponseMessage) updates) => super.copyWith((message) => updates(message as ResponseMessage)) as ResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseMessage create() => ResponseMessage._();
  ResponseMessage createEmptyInstance() => create();
  static $pb.PbList<ResponseMessage> createRepeated() => $pb.PbList<ResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static ResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseMessage>(create);
  static ResponseMessage? _defaultInstance;

  ResponseMessage_Response whichResponse() => _ResponseMessage_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get i => $_getIZ(0);
  @$pb.TagNumber(1)
  set i($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasI() => $_has(0);
  @$pb.TagNumber(1)
  void clearI() => clearField(1);

  @$pb.TagNumber(2)
  ErrorInfo get errorInfo => $_getN(1);
  @$pb.TagNumber(2)
  set errorInfo(ErrorInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorInfo() => clearField(2);
  @$pb.TagNumber(2)
  ErrorInfo ensureErrorInfo() => $_ensure(1);

  @$pb.TagNumber(20)
  CreateRoomResponse get createRoom => $_getN(2);
  @$pb.TagNumber(20)
  set createRoom(CreateRoomResponse v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasCreateRoom() => $_has(2);
  @$pb.TagNumber(20)
  void clearCreateRoom() => clearField(20);
  @$pb.TagNumber(20)
  CreateRoomResponse ensureCreateRoom() => $_ensure(2);

  @$pb.TagNumber(21)
  JoinRoomResponse get joinRoom => $_getN(3);
  @$pb.TagNumber(21)
  set joinRoom(JoinRoomResponse v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasJoinRoom() => $_has(3);
  @$pb.TagNumber(21)
  void clearJoinRoom() => clearField(21);
  @$pb.TagNumber(21)
  JoinRoomResponse ensureJoinRoom() => $_ensure(3);

  @$pb.TagNumber(22)
  UpdatePropertyResponse get updateProperty => $_getN(4);
  @$pb.TagNumber(22)
  set updateProperty(UpdatePropertyResponse v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasUpdateProperty() => $_has(4);
  @$pb.TagNumber(22)
  void clearUpdateProperty() => clearField(22);
  @$pb.TagNumber(22)
  UpdatePropertyResponse ensureUpdateProperty() => $_ensure(4);

  @$pb.TagNumber(23)
  UpdateSysPropertyResponse get updateSysProperty => $_getN(5);
  @$pb.TagNumber(23)
  set updateSysProperty(UpdateSysPropertyResponse v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasUpdateSysProperty() => $_has(5);
  @$pb.TagNumber(23)
  void clearUpdateSysProperty() => clearField(23);
  @$pb.TagNumber(23)
  UpdateSysPropertyResponse ensureUpdateSysProperty() => $_ensure(5);

  @$pb.TagNumber(24)
  UpdateMasterClientResponse get updateMasterClient => $_getN(6);
  @$pb.TagNumber(24)
  set updateMasterClient(UpdateMasterClientResponse v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasUpdateMasterClient() => $_has(6);
  @$pb.TagNumber(24)
  void clearUpdateMasterClient() => clearField(24);
  @$pb.TagNumber(24)
  UpdateMasterClientResponse ensureUpdateMasterClient() => $_ensure(6);

  @$pb.TagNumber(25)
  KickMemberResponse get kickMember => $_getN(7);
  @$pb.TagNumber(25)
  set kickMember(KickMemberResponse v) { setField(25, v); }
  @$pb.TagNumber(25)
  $core.bool hasKickMember() => $_has(7);
  @$pb.TagNumber(25)
  void clearKickMember() => clearField(25);
  @$pb.TagNumber(25)
  KickMemberResponse ensureKickMember() => $_ensure(7);

  @$pb.TagNumber(26)
  AckCommand get ack => $_getN(8);
  @$pb.TagNumber(26)
  set ack(AckCommand v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasAck() => $_has(8);
  @$pb.TagNumber(26)
  void clearAck() => clearField(26);
  @$pb.TagNumber(26)
  AckCommand ensureAck() => $_ensure(8);

  @$pb.TagNumber(28)
  InterestGroups get interestGroups => $_getN(9);
  @$pb.TagNumber(28)
  set interestGroups(InterestGroups v) { setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasInterestGroups() => $_has(9);
  @$pb.TagNumber(28)
  void clearInterestGroups() => clearField(28);
  @$pb.TagNumber(28)
  InterestGroups ensureInterestGroups() => $_ensure(9);
}

enum Body_Body {
  request, 
  response, 
  direct, 
  roomNotification, 
  events, 
  statistic, 
  roomList, 
  error, 
  notSet
}

class Body extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Body_Body> _Body_BodyByTag = {
    1 : Body_Body.request,
    2 : Body_Body.response,
    3 : Body_Body.direct,
    4 : Body_Body.roomNotification,
    5 : Body_Body.events,
    50 : Body_Body.statistic,
    51 : Body_Body.roomList,
    127 : Body_Body.error,
    0 : Body_Body.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Body', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 50, 51, 127])
    ..aOM<RequestMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: RequestMessage.create)
    ..aOM<ResponseMessage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response', subBuilder: ResponseMessage.create)
    ..aOM<DirectCommand>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direct', subBuilder: DirectCommand.create)
    ..aOM<RoomNotification>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomNotification', subBuilder: RoomNotification.create)
    ..aOM<EventsCommand>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'events', subBuilder: EventsCommand.create)
    ..aOM<StatisticCommand>(50, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statistic', subBuilder: StatisticCommand.create)
    ..aOM<RoomListCommand>(51, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomList', subBuilder: RoomListCommand.create)
    ..aOM<ErrorCommand>(127, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: ErrorCommand.create)
    ..hasRequiredFields = false
  ;

  Body._() : super();
  factory Body({
    RequestMessage? request,
    ResponseMessage? response,
    DirectCommand? direct,
    RoomNotification? roomNotification,
    EventsCommand? events,
    StatisticCommand? statistic,
    RoomListCommand? roomList,
    ErrorCommand? error,
  }) {
    final _result = create();
    if (request != null) {
      _result.request = request;
    }
    if (response != null) {
      _result.response = response;
    }
    if (direct != null) {
      _result.direct = direct;
    }
    if (roomNotification != null) {
      _result.roomNotification = roomNotification;
    }
    if (events != null) {
      _result.events = events;
    }
    if (statistic != null) {
      _result.statistic = statistic;
    }
    if (roomList != null) {
      _result.roomList = roomList;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory Body.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Body.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Body clone() => Body()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Body copyWith(void Function(Body) updates) => super.copyWith((message) => updates(message as Body)) as Body; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Body create() => Body._();
  Body createEmptyInstance() => create();
  static $pb.PbList<Body> createRepeated() => $pb.PbList<Body>();
  @$core.pragma('dart2js:noInline')
  static Body getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Body>(create);
  static Body? _defaultInstance;

  Body_Body whichBody() => _Body_BodyByTag[$_whichOneof(0)]!;
  void clearBody() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RequestMessage get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(RequestMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  RequestMessage ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  ResponseMessage get response => $_getN(1);
  @$pb.TagNumber(2)
  set response(ResponseMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponse() => clearField(2);
  @$pb.TagNumber(2)
  ResponseMessage ensureResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  DirectCommand get direct => $_getN(2);
  @$pb.TagNumber(3)
  set direct(DirectCommand v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDirect() => $_has(2);
  @$pb.TagNumber(3)
  void clearDirect() => clearField(3);
  @$pb.TagNumber(3)
  DirectCommand ensureDirect() => $_ensure(2);

  @$pb.TagNumber(4)
  RoomNotification get roomNotification => $_getN(3);
  @$pb.TagNumber(4)
  set roomNotification(RoomNotification v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoomNotification() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoomNotification() => clearField(4);
  @$pb.TagNumber(4)
  RoomNotification ensureRoomNotification() => $_ensure(3);

  @$pb.TagNumber(5)
  EventsCommand get events => $_getN(4);
  @$pb.TagNumber(5)
  set events(EventsCommand v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEvents() => $_has(4);
  @$pb.TagNumber(5)
  void clearEvents() => clearField(5);
  @$pb.TagNumber(5)
  EventsCommand ensureEvents() => $_ensure(4);

  @$pb.TagNumber(50)
  StatisticCommand get statistic => $_getN(5);
  @$pb.TagNumber(50)
  set statistic(StatisticCommand v) { setField(50, v); }
  @$pb.TagNumber(50)
  $core.bool hasStatistic() => $_has(5);
  @$pb.TagNumber(50)
  void clearStatistic() => clearField(50);
  @$pb.TagNumber(50)
  StatisticCommand ensureStatistic() => $_ensure(5);

  @$pb.TagNumber(51)
  RoomListCommand get roomList => $_getN(6);
  @$pb.TagNumber(51)
  set roomList(RoomListCommand v) { setField(51, v); }
  @$pb.TagNumber(51)
  $core.bool hasRoomList() => $_has(6);
  @$pb.TagNumber(51)
  void clearRoomList() => clearField(51);
  @$pb.TagNumber(51)
  RoomListCommand ensureRoomList() => $_ensure(6);

  @$pb.TagNumber(127)
  ErrorCommand get error => $_getN(7);
  @$pb.TagNumber(127)
  set error(ErrorCommand v) { setField(127, v); }
  @$pb.TagNumber(127)
  $core.bool hasError() => $_has(7);
  @$pb.TagNumber(127)
  void clearError() => clearField(127);
  @$pb.TagNumber(127)
  ErrorCommand ensureError() => $_ensure(7);
}

class Command extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Command', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game_protobuf_messages.proto.messages'), createEmptyInstance: create)
    ..e<CommandType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cmd', $pb.PbFieldType.OE, defaultOrMaker: CommandType.unknown, valueOf: CommandType.valueOf, enumValues: CommandType.values)
    ..e<OpType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'op', $pb.PbFieldType.OE, defaultOrMaker: OpType.none, valueOf: OpType.valueOf, enumValues: OpType.values)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Command._() : super();
  factory Command({
    CommandType? cmd,
    OpType? op,
    $core.List<$core.int>? body,
  }) {
    final _result = create();
    if (cmd != null) {
      _result.cmd = cmd;
    }
    if (op != null) {
      _result.op = op;
    }
    if (body != null) {
      _result.body = body;
    }
    return _result;
  }
  factory Command.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Command.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Command clone() => Command()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Command copyWith(void Function(Command) updates) => super.copyWith((message) => updates(message as Command)) as Command; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Command create() => Command._();
  Command createEmptyInstance() => create();
  static $pb.PbList<Command> createRepeated() => $pb.PbList<Command>();
  @$core.pragma('dart2js:noInline')
  static Command getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Command>(create);
  static Command? _defaultInstance;

  @$pb.TagNumber(1)
  CommandType get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(CommandType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCmd() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmd() => clearField(1);

  @$pb.TagNumber(2)
  OpType get op => $_getN(1);
  @$pb.TagNumber(2)
  set op(OpType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOp() => $_has(1);
  @$pb.TagNumber(2)
  void clearOp() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get body => $_getN(2);
  @$pb.TagNumber(3)
  set body($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);
}

