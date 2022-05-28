///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CommandType extends $pb.ProtobufEnum {
  static const CommandType unknown = CommandType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'unknown');
  static const CommandType session = CommandType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'session');
  static const CommandType conv = CommandType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'conv');
  static const CommandType direct = CommandType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'direct');
  static const CommandType error = CommandType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'error');
  static const CommandType lobby = CommandType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'lobby');
  static const CommandType statistic = CommandType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'statistic');
  static const CommandType events = CommandType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'events');
  static const CommandType ack = CommandType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ack');
  static const CommandType echo = CommandType._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'echo');

  static const $core.List<CommandType> values = <CommandType> [
    unknown,
    session,
    conv,
    direct,
    error,
    lobby,
    statistic,
    events,
    ack,
    echo,
  ];

  static final $core.Map<$core.int, CommandType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommandType? valueOf($core.int value) => _byValue[value];

  const CommandType._($core.int v, $core.String n) : super(v, n);
}

class OpType extends $pb.ProtobufEnum {
  static const OpType none = OpType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'none');
  static const OpType open = OpType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'open');
  static const OpType opened = OpType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'opened');
  static const OpType close = OpType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'close');
  static const OpType closed = OpType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'closed');
  static const OpType start = OpType._(30, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'start');
  static const OpType started = OpType._(31, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'started');
  static const OpType add_random = OpType._(32, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'add_random');
  static const OpType random_added = OpType._(33, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'random_added');
  static const OpType match_random = OpType._(34, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'match_random');
  static const OpType random_matched = OpType._(35, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'random_matched');
  static const OpType add = OpType._(36, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'add');
  static const OpType added = OpType._(37, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'added');
  static const OpType members_joined = OpType._(38, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'members_joined');
  static const OpType members_online = OpType._(39, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'members_online');
  static const OpType remove = OpType._(40, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'remove');
  static const OpType removed = OpType._(41, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'removed');
  static const OpType members_left = OpType._(42, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'members_left');
  static const OpType members_offline = OpType._(43, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'members_offline');
  static const OpType update_master_client = OpType._(44, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'update_master_client');
  static const OpType master_client_updated = OpType._(45, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'master_client_updated');
  static const OpType master_client_changed = OpType._(46, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'master_client_changed');
  static const OpType update = OpType._(47, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'update');
  static const OpType updated = OpType._(48, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'updated');
  static const OpType updated_notify = OpType._(49, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'updated_notify');
  static const OpType update_system_property = OpType._(50, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'update_system_property');
  static const OpType system_property_updated = OpType._(51, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'system_property_updated');
  static const OpType system_property_updated_notify = OpType._(52, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'system_property_updated_notify');
  static const OpType opened_notify = OpType._(53, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'opened_notify');
  static const OpType visible = OpType._(54, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'visible');
  static const OpType visible_notify = OpType._(55, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'visible_notify');
  static const OpType update_player_prop = OpType._(56, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'update_player_prop');
  static const OpType player_prop_updated = OpType._(57, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'player_prop_updated');
  static const OpType player_props = OpType._(58, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'player_props');
  static const OpType kick = OpType._(59, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'kick');
  static const OpType kicked = OpType._(60, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'kicked');
  static const OpType kicked_notice = OpType._(61, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'kicked_notice');
  static const OpType update_interest_groups = OpType._(62, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'update_interest_groups');
  static const OpType interest_groups_updated = OpType._(65, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'interest_groups_updated');
  static const OpType room_list = OpType._(100, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'room_list');
  static const OpType find_friends = OpType._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'find_friends');
  static const OpType found_friends = OpType._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'found_friends');

  static const $core.List<OpType> values = <OpType> [
    none,
    open,
    opened,
    close,
    closed,
    start,
    started,
    add_random,
    random_added,
    match_random,
    random_matched,
    add,
    added,
    members_joined,
    members_online,
    remove,
    removed,
    members_left,
    members_offline,
    update_master_client,
    master_client_updated,
    master_client_changed,
    update,
    updated,
    updated_notify,
    update_system_property,
    system_property_updated,
    system_property_updated_notify,
    opened_notify,
    visible,
    visible_notify,
    update_player_prop,
    player_prop_updated,
    player_props,
    kick,
    kicked,
    kicked_notice,
    update_interest_groups,
    interest_groups_updated,
    room_list,
    find_friends,
    found_friends,
  ];

  static final $core.Map<$core.int, OpType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OpType? valueOf($core.int value) => _byValue[value];

  const OpType._($core.int v, $core.String n) : super(v, n);
}

