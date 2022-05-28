///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use commandTypeDescriptor instead')
const CommandType$json = const {
  '1': 'CommandType',
  '2': const [
    const {'1': 'unknown', '2': 0},
    const {'1': 'session', '2': 1},
    const {'1': 'conv', '2': 2},
    const {'1': 'direct', '2': 3},
    const {'1': 'error', '2': 4},
    const {'1': 'lobby', '2': 5},
    const {'1': 'statistic', '2': 6},
    const {'1': 'events', '2': 7},
    const {'1': 'ack', '2': 8},
    const {'1': 'echo', '2': 9},
  ],
};

/// Descriptor for `CommandType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List commandTypeDescriptor = $convert.base64Decode('CgtDb21tYW5kVHlwZRILCgd1bmtub3duEAASCwoHc2Vzc2lvbhABEggKBGNvbnYQAhIKCgZkaXJlY3QQAxIJCgVlcnJvchAEEgkKBWxvYmJ5EAUSDQoJc3RhdGlzdGljEAYSCgoGZXZlbnRzEAcSBwoDYWNrEAgSCAoEZWNobxAJ');
@$core.Deprecated('Use opTypeDescriptor instead')
const OpType$json = const {
  '1': 'OpType',
  '2': const [
    const {'1': 'none', '2': 0},
    const {'1': 'open', '2': 1},
    const {'1': 'opened', '2': 2},
    const {'1': 'close', '2': 3},
    const {'1': 'closed', '2': 4},
    const {'1': 'start', '2': 30},
    const {'1': 'started', '2': 31},
    const {'1': 'add_random', '2': 32},
    const {'1': 'random_added', '2': 33},
    const {'1': 'match_random', '2': 34},
    const {'1': 'random_matched', '2': 35},
    const {'1': 'add', '2': 36},
    const {'1': 'added', '2': 37},
    const {'1': 'members_joined', '2': 38},
    const {'1': 'members_online', '2': 39},
    const {'1': 'remove', '2': 40},
    const {'1': 'removed', '2': 41},
    const {'1': 'members_left', '2': 42},
    const {'1': 'members_offline', '2': 43},
    const {'1': 'update_master_client', '2': 44},
    const {'1': 'master_client_updated', '2': 45},
    const {'1': 'master_client_changed', '2': 46},
    const {'1': 'update', '2': 47},
    const {'1': 'updated', '2': 48},
    const {'1': 'updated_notify', '2': 49},
    const {'1': 'update_system_property', '2': 50},
    const {'1': 'system_property_updated', '2': 51},
    const {'1': 'system_property_updated_notify', '2': 52},
    const {'1': 'opened_notify', '2': 53},
    const {'1': 'visible', '2': 54},
    const {'1': 'visible_notify', '2': 55},
    const {'1': 'update_player_prop', '2': 56},
    const {'1': 'player_prop_updated', '2': 57},
    const {'1': 'player_props', '2': 58},
    const {'1': 'kick', '2': 59},
    const {'1': 'kicked', '2': 60},
    const {'1': 'kicked_notice', '2': 61},
    const {'1': 'update_interest_groups', '2': 62},
    const {'1': 'interest_groups_updated', '2': 65},
    const {'1': 'room_list', '2': 100},
    const {'1': 'find_friends', '2': 101},
    const {'1': 'found_friends', '2': 102},
  ],
};

/// Descriptor for `OpType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List opTypeDescriptor = $convert.base64Decode('CgZPcFR5cGUSCAoEbm9uZRAAEggKBG9wZW4QARIKCgZvcGVuZWQQAhIJCgVjbG9zZRADEgoKBmNsb3NlZBAEEgkKBXN0YXJ0EB4SCwoHc3RhcnRlZBAfEg4KCmFkZF9yYW5kb20QIBIQCgxyYW5kb21fYWRkZWQQIRIQCgxtYXRjaF9yYW5kb20QIhISCg5yYW5kb21fbWF0Y2hlZBAjEgcKA2FkZBAkEgkKBWFkZGVkECUSEgoObWVtYmVyc19qb2luZWQQJhISCg5tZW1iZXJzX29ubGluZRAnEgoKBnJlbW92ZRAoEgsKB3JlbW92ZWQQKRIQCgxtZW1iZXJzX2xlZnQQKhITCg9tZW1iZXJzX29mZmxpbmUQKxIYChR1cGRhdGVfbWFzdGVyX2NsaWVudBAsEhkKFW1hc3Rlcl9jbGllbnRfdXBkYXRlZBAtEhkKFW1hc3Rlcl9jbGllbnRfY2hhbmdlZBAuEgoKBnVwZGF0ZRAvEgsKB3VwZGF0ZWQQMBISCg51cGRhdGVkX25vdGlmeRAxEhoKFnVwZGF0ZV9zeXN0ZW1fcHJvcGVydHkQMhIbChdzeXN0ZW1fcHJvcGVydHlfdXBkYXRlZBAzEiIKHnN5c3RlbV9wcm9wZXJ0eV91cGRhdGVkX25vdGlmeRA0EhEKDW9wZW5lZF9ub3RpZnkQNRILCgd2aXNpYmxlEDYSEgoOdmlzaWJsZV9ub3RpZnkQNxIWChJ1cGRhdGVfcGxheWVyX3Byb3AQOBIXChNwbGF5ZXJfcHJvcF91cGRhdGVkEDkSEAoMcGxheWVyX3Byb3BzEDoSCAoEa2ljaxA7EgoKBmtpY2tlZBA8EhEKDWtpY2tlZF9ub3RpY2UQPRIaChZ1cGRhdGVfaW50ZXJlc3RfZ3JvdXBzED4SGwoXaW50ZXJlc3RfZ3JvdXBzX3VwZGF0ZWQQQRINCglyb29tX2xpc3QQZBIQCgxmaW5kX2ZyaWVuZHMQZRIRCg1mb3VuZF9mcmllbmRzEGY=');
@$core.Deprecated('Use intValueDescriptor instead')
const IntValue$json = const {
  '1': 'IntValue',
  '2': const [
    const {'1': 'val', '3': 1, '4': 1, '5': 5, '10': 'val'},
  ],
};

/// Descriptor for `IntValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List intValueDescriptor = $convert.base64Decode('CghJbnRWYWx1ZRIQCgN2YWwYASABKAVSA3ZhbA==');
@$core.Deprecated('Use roomSystemPropertyDescriptor instead')
const RoomSystemProperty$json = const {
  '1': 'RoomSystemProperty',
  '2': const [
    const {'1': 'open', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'open'},
    const {'1': 'visible', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'visible'},
    const {'1': 'expect_members', '3': 3, '4': 1, '5': 9, '10': 'expectMembers'},
    const {'1': 'max_members', '3': 4, '4': 1, '5': 5, '10': 'maxMembers'},
  ],
};

/// Descriptor for `RoomSystemProperty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomSystemPropertyDescriptor = $convert.base64Decode('ChJSb29tU3lzdGVtUHJvcGVydHkSLgoEb3BlbhgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5Cb29sVmFsdWVSBG9wZW4SNAoHdmlzaWJsZRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5Cb29sVmFsdWVSB3Zpc2libGUSJQoOZXhwZWN0X21lbWJlcnMYAyABKAlSDWV4cGVjdE1lbWJlcnMSHwoLbWF4X21lbWJlcnMYBCABKAVSCm1heE1lbWJlcnM=');
@$core.Deprecated('Use roomMemberDescriptor instead')
const RoomMember$json = const {
  '1': 'RoomMember',
  '2': const [
    const {'1': 'pid', '3': 1, '4': 1, '5': 9, '10': 'pid'},
    const {'1': 'actor_id', '3': 2, '4': 1, '5': 5, '10': 'actorId'},
    const {'1': 'attr', '3': 3, '4': 1, '5': 12, '10': 'attr'},
    const {'1': 'inactive', '3': 4, '4': 1, '5': 8, '10': 'inactive'},
  ],
};

/// Descriptor for `RoomMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomMemberDescriptor = $convert.base64Decode('CgpSb29tTWVtYmVyEhAKA3BpZBgBIAEoCVIDcGlkEhkKCGFjdG9yX2lkGAIgASgFUgdhY3RvcklkEhIKBGF0dHIYAyABKAxSBGF0dHISGgoIaW5hY3RpdmUYBCABKAhSCGluYWN0aXZl');
@$core.Deprecated('Use appInfoDescriptor instead')
const AppInfo$json = const {
  '1': 'AppInfo',
  '2': const [
    const {'1': 'app_code', '3': 1, '4': 1, '5': 5, '10': 'appCode'},
    const {'1': 'app_msg', '3': 2, '4': 1, '5': 9, '10': 'appMsg'},
  ],
};

/// Descriptor for `AppInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appInfoDescriptor = $convert.base64Decode('CgdBcHBJbmZvEhkKCGFwcF9jb2RlGAEgASgFUgdhcHBDb2RlEhcKB2FwcF9tc2cYAiABKAlSBmFwcE1zZw==');
@$core.Deprecated('Use errorInfoDescriptor instead')
const ErrorInfo$json = const {
  '1': 'ErrorInfo',
  '2': const [
    const {'1': 'reason_code', '3': 1, '4': 1, '5': 5, '10': 'reasonCode'},
    const {'1': 'detail', '3': 2, '4': 1, '5': 9, '10': 'detail'},
    const {'1': 'app_info', '3': 3, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.AppInfo', '10': 'appInfo'},
  ],
};

/// Descriptor for `ErrorInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorInfoDescriptor = $convert.base64Decode('CglFcnJvckluZm8SHwoLcmVhc29uX2NvZGUYASABKAVSCnJlYXNvbkNvZGUSFgoGZGV0YWlsGAIgASgJUgZkZXRhaWwSSQoIYXBwX2luZm8YAyABKAsyLi5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLkFwcEluZm9SB2FwcEluZm8=');
@$core.Deprecated('Use roomOptionsDescriptor instead')
const RoomOptions$json = const {
  '1': 'RoomOptions',
  '2': const [
    const {'1': 'cid', '3': 1, '4': 1, '5': 9, '10': 'cid'},
    const {'1': 'visible', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'visible'},
    const {'1': 'open', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.BoolValue', '10': 'open'},
    const {'1': 'empty_room_ttl', '3': 4, '4': 1, '5': 5, '10': 'emptyRoomTtl'},
    const {'1': 'player_ttl', '3': 5, '4': 1, '5': 5, '10': 'playerTtl'},
    const {'1': 'max_members', '3': 6, '4': 1, '5': 5, '10': 'maxMembers'},
    const {'1': 'flag', '3': 7, '4': 1, '5': 3, '10': 'flag'},
    const {'1': 'plugin_name', '3': 8, '4': 1, '5': 9, '10': 'pluginName'},
    const {'1': 'attr', '3': 9, '4': 1, '5': 12, '10': 'attr'},
    const {'1': 'expect_members', '3': 10, '4': 3, '5': 9, '10': 'expectMembers'},
    const {'1': 'lobby_attr_keys', '3': 11, '4': 3, '5': 9, '10': 'lobbyAttrKeys'},
    const {'1': 'members', '3': 12, '4': 3, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomMember', '10': 'members'},
    const {'1': 'member_count', '3': 13, '4': 1, '5': 5, '10': 'memberCount'},
    const {'1': 'master_actor_id', '3': 14, '4': 1, '5': 5, '10': 'masterActorId'},
  ],
};

/// Descriptor for `RoomOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomOptionsDescriptor = $convert.base64Decode('CgtSb29tT3B0aW9ucxIQCgNjaWQYASABKAlSA2NpZBI0Cgd2aXNpYmxlGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkJvb2xWYWx1ZVIHdmlzaWJsZRIuCgRvcGVuGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLkJvb2xWYWx1ZVIEb3BlbhIkCg5lbXB0eV9yb29tX3R0bBgEIAEoBVIMZW1wdHlSb29tVHRsEh0KCnBsYXllcl90dGwYBSABKAVSCXBsYXllclR0bBIfCgttYXhfbWVtYmVycxgGIAEoBVIKbWF4TWVtYmVycxISCgRmbGFnGAcgASgDUgRmbGFnEh8KC3BsdWdpbl9uYW1lGAggASgJUgpwbHVnaW5OYW1lEhIKBGF0dHIYCSABKAxSBGF0dHISJQoOZXhwZWN0X21lbWJlcnMYCiADKAlSDWV4cGVjdE1lbWJlcnMSJgoPbG9iYnlfYXR0cl9rZXlzGAsgAygJUg1sb2JieUF0dHJLZXlzEksKB21lbWJlcnMYDCADKAsyMS5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLlJvb21NZW1iZXJSB21lbWJlcnMSIQoMbWVtYmVyX2NvdW50GA0gASgFUgttZW1iZXJDb3VudBImCg9tYXN0ZXJfYWN0b3JfaWQYDiABKAVSDW1hc3RlckFjdG9ySWQ=');
@$core.Deprecated('Use sessionOpenRequestDescriptor instead')
const SessionOpenRequest$json = const {
  '1': 'SessionOpenRequest',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'peer_id', '3': 2, '4': 1, '5': 9, '10': 'peerId'},
    const {'1': 'game_version', '3': 3, '4': 1, '5': 9, '10': 'gameVersion'},
    const {'1': 'sdk_version', '3': 4, '4': 1, '5': 9, '10': 'sdkVersion'},
    const {'1': 'protocol_version', '3': 5, '4': 1, '5': 9, '10': 'protocolVersion'},
    const {'1': 't', '3': 6, '4': 1, '5': 3, '10': 't'},
    const {'1': 'n', '3': 7, '4': 1, '5': 9, '10': 'n'},
    const {'1': 's', '3': 8, '4': 1, '5': 9, '10': 's'},
    const {'1': 'config_bitmap', '3': 9, '4': 1, '5': 3, '10': 'configBitmap'},
    const {'1': 'session_token', '3': 10, '4': 1, '5': 9, '10': 'sessionToken'},
  ],
};

/// Descriptor for `SessionOpenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionOpenRequestDescriptor = $convert.base64Decode('ChJTZXNzaW9uT3BlblJlcXVlc3QSFQoGYXBwX2lkGAEgASgJUgVhcHBJZBIXCgdwZWVyX2lkGAIgASgJUgZwZWVySWQSIQoMZ2FtZV92ZXJzaW9uGAMgASgJUgtnYW1lVmVyc2lvbhIfCgtzZGtfdmVyc2lvbhgEIAEoCVIKc2RrVmVyc2lvbhIpChBwcm90b2NvbF92ZXJzaW9uGAUgASgJUg9wcm90b2NvbFZlcnNpb24SDAoBdBgGIAEoA1IBdBIMCgFuGAcgASgJUgFuEgwKAXMYCCABKAlSAXMSIwoNY29uZmlnX2JpdG1hcBgJIAEoA1IMY29uZmlnQml0bWFwEiMKDXNlc3Npb25fdG9rZW4YCiABKAlSDHNlc3Npb25Ub2tlbg==');
@$core.Deprecated('Use createRoomRequestDescriptor instead')
const CreateRoomRequest$json = const {
  '1': 'CreateRoomRequest',
  '2': const [
    const {'1': 'room_options', '3': 1, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomOptions', '10': 'roomOptions'},
  ],
};

/// Descriptor for `CreateRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoomRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVSb29tUmVxdWVzdBJVCgxyb29tX29wdGlvbnMYASABKAsyMi5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLlJvb21PcHRpb25zUgtyb29tT3B0aW9ucw==');
@$core.Deprecated('Use createRoomResponseDescriptor instead')
const CreateRoomResponse$json = const {
  '1': 'CreateRoomResponse',
  '2': const [
    const {'1': 'room_options', '3': 1, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomOptions', '10': 'roomOptions'},
    const {'1': 'addr', '3': 2, '4': 1, '5': 9, '10': 'addr'},
    const {'1': 'room_created', '3': 3, '4': 1, '5': 8, '10': 'roomCreated'},
  ],
};

/// Descriptor for `CreateRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoomResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVSb29tUmVzcG9uc2USVQoMcm9vbV9vcHRpb25zGAEgASgLMjIuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5Sb29tT3B0aW9uc1ILcm9vbU9wdGlvbnMSEgoEYWRkchgCIAEoCVIEYWRkchIhCgxyb29tX2NyZWF0ZWQYAyABKAhSC3Jvb21DcmVhdGVk');
@$core.Deprecated('Use joinRoomRequestDescriptor instead')
const JoinRoomRequest$json = const {
  '1': 'JoinRoomRequest',
  '2': const [
    const {'1': 'rejoin', '3': 1, '4': 1, '5': 8, '10': 'rejoin'},
    const {'1': 'room_options', '3': 2, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomOptions', '10': 'roomOptions'},
    const {'1': 'expect_attr', '3': 3, '4': 1, '5': 12, '10': 'expectAttr'},
    const {'1': 'piggyback_peer_id', '3': 4, '4': 1, '5': 9, '10': 'piggybackPeerId'},
    const {'1': 'create_on_not_found', '3': 5, '4': 1, '5': 8, '10': 'createOnNotFound'},
  ],
};

/// Descriptor for `JoinRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinRoomRequestDescriptor = $convert.base64Decode('Cg9Kb2luUm9vbVJlcXVlc3QSFgoGcmVqb2luGAEgASgIUgZyZWpvaW4SVQoMcm9vbV9vcHRpb25zGAIgASgLMjIuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5Sb29tT3B0aW9uc1ILcm9vbU9wdGlvbnMSHwoLZXhwZWN0X2F0dHIYAyABKAxSCmV4cGVjdEF0dHISKgoRcGlnZ3liYWNrX3BlZXJfaWQYBCABKAlSD3BpZ2d5YmFja1BlZXJJZBItChNjcmVhdGVfb25fbm90X2ZvdW5kGAUgASgIUhBjcmVhdGVPbk5vdEZvdW5k');
@$core.Deprecated('Use joinRoomResponseDescriptor instead')
const JoinRoomResponse$json = const {
  '1': 'JoinRoomResponse',
  '2': const [
    const {'1': 'room_options', '3': 1, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomOptions', '10': 'roomOptions'},
    const {'1': 'addr', '3': 2, '4': 1, '5': 9, '10': 'addr'},
  ],
};

/// Descriptor for `JoinRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinRoomResponseDescriptor = $convert.base64Decode('ChBKb2luUm9vbVJlc3BvbnNlElUKDHJvb21fb3B0aW9ucxgBIAEoCzIyLmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuUm9vbU9wdGlvbnNSC3Jvb21PcHRpb25zEhIKBGFkZHIYAiABKAlSBGFkZHI=');
@$core.Deprecated('Use joinRoomNotificationDescriptor instead')
const JoinRoomNotification$json = const {
  '1': 'JoinRoomNotification',
  '2': const [
    const {'1': 'member', '3': 1, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomMember', '10': 'member'},
  ],
};

/// Descriptor for `JoinRoomNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinRoomNotificationDescriptor = $convert.base64Decode('ChRKb2luUm9vbU5vdGlmaWNhdGlvbhJJCgZtZW1iZXIYASABKAsyMS5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLlJvb21NZW1iZXJSBm1lbWJlcg==');
@$core.Deprecated('Use leftRoomNotificationDescriptor instead')
const LeftRoomNotification$json = const {
  '1': 'LeftRoomNotification',
  '2': const [
    const {'1': 'actor_id', '3': 1, '4': 1, '5': 5, '10': 'actorId'},
  ],
};

/// Descriptor for `LeftRoomNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leftRoomNotificationDescriptor = $convert.base64Decode('ChRMZWZ0Um9vbU5vdGlmaWNhdGlvbhIZCghhY3Rvcl9pZBgBIAEoBVIHYWN0b3JJZA==');
@$core.Deprecated('Use kickMemberRequestDescriptor instead')
const KickMemberRequest$json = const {
  '1': 'KickMemberRequest',
  '2': const [
    const {'1': 'target_actor_id', '3': 1, '4': 1, '5': 5, '10': 'targetActorId'},
    const {'1': 'app_info', '3': 2, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.AppInfo', '10': 'appInfo'},
  ],
};

/// Descriptor for `KickMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kickMemberRequestDescriptor = $convert.base64Decode('ChFLaWNrTWVtYmVyUmVxdWVzdBImCg90YXJnZXRfYWN0b3JfaWQYASABKAVSDXRhcmdldEFjdG9ySWQSSQoIYXBwX2luZm8YAiABKAsyLi5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLkFwcEluZm9SB2FwcEluZm8=');
@$core.Deprecated('Use kickMemberResponseDescriptor instead')
const KickMemberResponse$json = const {
  '1': 'KickMemberResponse',
  '2': const [
    const {'1': 'target_actor_id', '3': 1, '4': 1, '5': 5, '10': 'targetActorId'},
  ],
};

/// Descriptor for `KickMemberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kickMemberResponseDescriptor = $convert.base64Decode('ChJLaWNrTWVtYmVyUmVzcG9uc2USJgoPdGFyZ2V0X2FjdG9yX2lkGAEgASgFUg10YXJnZXRBY3Rvcklk');
@$core.Deprecated('Use updatePropertyRequestDescriptor instead')
const UpdatePropertyRequest$json = const {
  '1': 'UpdatePropertyRequest',
  '2': const [
    const {'1': 'target_actor_id', '3': 1, '4': 1, '5': 5, '10': 'targetActorId'},
    const {'1': 'expect_attr', '3': 2, '4': 1, '5': 12, '10': 'expectAttr'},
    const {'1': 'attr', '3': 3, '4': 1, '5': 12, '10': 'attr'},
  ],
};

/// Descriptor for `UpdatePropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyRequestDescriptor = $convert.base64Decode('ChVVcGRhdGVQcm9wZXJ0eVJlcXVlc3QSJgoPdGFyZ2V0X2FjdG9yX2lkGAEgASgFUg10YXJnZXRBY3RvcklkEh8KC2V4cGVjdF9hdHRyGAIgASgMUgpleHBlY3RBdHRyEhIKBGF0dHIYAyABKAxSBGF0dHI=');
@$core.Deprecated('Use updatePropertyResponseDescriptor instead')
const UpdatePropertyResponse$json = const {
  '1': 'UpdatePropertyResponse',
  '2': const [
    const {'1': 'attr', '3': 1, '4': 1, '5': 12, '10': 'attr'},
    const {'1': 'actor_id', '3': 2, '4': 1, '5': 5, '10': 'actorId'},
  ],
};

/// Descriptor for `UpdatePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyResponseDescriptor = $convert.base64Decode('ChZVcGRhdGVQcm9wZXJ0eVJlc3BvbnNlEhIKBGF0dHIYASABKAxSBGF0dHISGQoIYWN0b3JfaWQYAiABKAVSB2FjdG9ySWQ=');
@$core.Deprecated('Use updatePropertyNotificationDescriptor instead')
const UpdatePropertyNotification$json = const {
  '1': 'UpdatePropertyNotification',
  '2': const [
    const {'1': 'attr', '3': 1, '4': 1, '5': 12, '10': 'attr'},
    const {'1': 'actor_id', '3': 2, '4': 1, '5': 5, '10': 'actorId'},
  ],
};

/// Descriptor for `UpdatePropertyNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyNotificationDescriptor = $convert.base64Decode('ChpVcGRhdGVQcm9wZXJ0eU5vdGlmaWNhdGlvbhISCgRhdHRyGAEgASgMUgRhdHRyEhkKCGFjdG9yX2lkGAIgASgFUgdhY3Rvcklk');
@$core.Deprecated('Use updateSysPropertyRequestDescriptor instead')
const UpdateSysPropertyRequest$json = const {
  '1': 'UpdateSysPropertyRequest',
  '2': const [
    const {'1': 'expect_sys_attr', '3': 1, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomSystemProperty', '10': 'expectSysAttr'},
    const {'1': 'sys_attr', '3': 2, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomSystemProperty', '10': 'sysAttr'},
  ],
};

/// Descriptor for `UpdateSysPropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSysPropertyRequestDescriptor = $convert.base64Decode('ChhVcGRhdGVTeXNQcm9wZXJ0eVJlcXVlc3QSYQoPZXhwZWN0X3N5c19hdHRyGAEgASgLMjkuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5Sb29tU3lzdGVtUHJvcGVydHlSDWV4cGVjdFN5c0F0dHISVAoIc3lzX2F0dHIYAiABKAsyOS5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLlJvb21TeXN0ZW1Qcm9wZXJ0eVIHc3lzQXR0cg==');
@$core.Deprecated('Use updateSysPropertyResponseDescriptor instead')
const UpdateSysPropertyResponse$json = const {
  '1': 'UpdateSysPropertyResponse',
  '2': const [
    const {'1': 'sys_attr', '3': 1, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomSystemProperty', '10': 'sysAttr'},
  ],
};

/// Descriptor for `UpdateSysPropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSysPropertyResponseDescriptor = $convert.base64Decode('ChlVcGRhdGVTeXNQcm9wZXJ0eVJlc3BvbnNlElQKCHN5c19hdHRyGAEgASgLMjkuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5Sb29tU3lzdGVtUHJvcGVydHlSB3N5c0F0dHI=');
@$core.Deprecated('Use updateSysPropertyNotificationDescriptor instead')
const UpdateSysPropertyNotification$json = const {
  '1': 'UpdateSysPropertyNotification',
  '2': const [
    const {'1': 'sys_attr', '3': 1, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomSystemProperty', '10': 'sysAttr'},
  ],
};

/// Descriptor for `UpdateSysPropertyNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSysPropertyNotificationDescriptor = $convert.base64Decode('Ch1VcGRhdGVTeXNQcm9wZXJ0eU5vdGlmaWNhdGlvbhJUCghzeXNfYXR0chgBIAEoCzI5LmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuUm9vbVN5c3RlbVByb3BlcnR5UgdzeXNBdHRy');
@$core.Deprecated('Use updateMasterClientRequestDescriptor instead')
const UpdateMasterClientRequest$json = const {
  '1': 'UpdateMasterClientRequest',
  '2': const [
    const {'1': 'master_actor_id', '3': 1, '4': 1, '5': 5, '10': 'masterActorId'},
  ],
};

/// Descriptor for `UpdateMasterClientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMasterClientRequestDescriptor = $convert.base64Decode('ChlVcGRhdGVNYXN0ZXJDbGllbnRSZXF1ZXN0EiYKD21hc3Rlcl9hY3Rvcl9pZBgBIAEoBVINbWFzdGVyQWN0b3JJZA==');
@$core.Deprecated('Use updateMasterClientResponseDescriptor instead')
const UpdateMasterClientResponse$json = const {
  '1': 'UpdateMasterClientResponse',
  '2': const [
    const {'1': 'master_actor_id', '3': 1, '4': 1, '5': 5, '10': 'masterActorId'},
  ],
};

/// Descriptor for `UpdateMasterClientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMasterClientResponseDescriptor = $convert.base64Decode('ChpVcGRhdGVNYXN0ZXJDbGllbnRSZXNwb25zZRImCg9tYXN0ZXJfYWN0b3JfaWQYASABKAVSDW1hc3RlckFjdG9ySWQ=');
@$core.Deprecated('Use updateMasterClientNotificationDescriptor instead')
const UpdateMasterClientNotification$json = const {
  '1': 'UpdateMasterClientNotification',
  '2': const [
    const {'1': 'master_actor_id', '3': 1, '4': 1, '5': 5, '10': 'masterActorId'},
  ],
};

/// Descriptor for `UpdateMasterClientNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMasterClientNotificationDescriptor = $convert.base64Decode('Ch5VcGRhdGVNYXN0ZXJDbGllbnROb3RpZmljYXRpb24SJgoPbWFzdGVyX2FjdG9yX2lkGAEgASgFUg1tYXN0ZXJBY3Rvcklk');
@$core.Deprecated('Use roomNotificationDescriptor instead')
const RoomNotification$json = const {
  '1': 'RoomNotification',
  '2': const [
    const {'1': 'init_by_actor', '3': 1, '4': 1, '5': 5, '10': 'initByActor'},
    const {'1': 'app_info', '3': 3, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.AppInfo', '10': 'appInfo'},
    const {'1': 'by_master', '3': 4, '4': 1, '5': 8, '10': 'byMaster'},
    const {'1': 'join_room', '3': 20, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.JoinRoomNotification', '9': 0, '10': 'joinRoom'},
    const {'1': 'update_property', '3': 21, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.UpdatePropertyNotification', '9': 0, '10': 'updateProperty'},
    const {'1': 'update_sys_property', '3': 22, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.UpdateSysPropertyNotification', '9': 0, '10': 'updateSysProperty'},
    const {'1': 'update_master_client', '3': 23, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.UpdateMasterClientNotification', '9': 0, '10': 'updateMasterClient'},
    const {'1': 'left_room', '3': 24, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.LeftRoomNotification', '9': 0, '10': 'leftRoom'},
  ],
  '8': const [
    const {'1': 'notification'},
  ],
};

/// Descriptor for `RoomNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomNotificationDescriptor = $convert.base64Decode('ChBSb29tTm90aWZpY2F0aW9uEiIKDWluaXRfYnlfYWN0b3IYASABKAVSC2luaXRCeUFjdG9yEkkKCGFwcF9pbmZvGAMgASgLMi4uZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5BcHBJbmZvUgdhcHBJbmZvEhsKCWJ5X21hc3RlchgEIAEoCFIIYnlNYXN0ZXISWgoJam9pbl9yb29tGBQgASgLMjsuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5Kb2luUm9vbU5vdGlmaWNhdGlvbkgAUghqb2luUm9vbRJsCg91cGRhdGVfcHJvcGVydHkYFSABKAsyQS5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLlVwZGF0ZVByb3BlcnR5Tm90aWZpY2F0aW9uSABSDnVwZGF0ZVByb3BlcnR5EnYKE3VwZGF0ZV9zeXNfcHJvcGVydHkYFiABKAsyRC5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLlVwZGF0ZVN5c1Byb3BlcnR5Tm90aWZpY2F0aW9uSABSEXVwZGF0ZVN5c1Byb3BlcnR5EnkKFHVwZGF0ZV9tYXN0ZXJfY2xpZW50GBcgASgLMkUuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5VcGRhdGVNYXN0ZXJDbGllbnROb3RpZmljYXRpb25IAFISdXBkYXRlTWFzdGVyQ2xpZW50EloKCWxlZnRfcm9vbRgYIAEoCzI7LmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuTGVmdFJvb21Ob3RpZmljYXRpb25IAFIIbGVmdFJvb21CDgoMbm90aWZpY2F0aW9u');
@$core.Deprecated('Use directCommandDescriptor instead')
const DirectCommand$json = const {
  '1': 'DirectCommand',
  '2': const [
    const {'1': 'cached', '3': 1, '4': 1, '5': 8, '10': 'cached'},
    const {'1': 'event_id', '3': 2, '4': 1, '5': 5, '10': 'eventId'},
    const {'1': 'receiver_group', '3': 3, '4': 1, '5': 5, '10': 'receiverGroup'},
    const {'1': 'caching_option', '3': 4, '4': 1, '5': 5, '10': 'cachingOption'},
    const {'1': 'event_options', '3': 5, '4': 1, '5': 5, '10': 'eventOptions'},
    const {'1': 'to_actor_ids', '3': 6, '4': 3, '5': 5, '10': 'toActorIds'},
    const {'1': 'msg', '3': 7, '4': 1, '5': 12, '10': 'msg'},
    const {'1': 'timestamp', '3': 8, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'from_actor_id', '3': 9, '4': 1, '5': 5, '10': 'fromActorId'},
    const {'1': 'i', '3': 10, '4': 1, '5': 5, '10': 'i'},
    const {'1': 'interest_group', '3': 11, '4': 1, '5': 5, '10': 'interestGroup'},
  ],
};

/// Descriptor for `DirectCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List directCommandDescriptor = $convert.base64Decode('Cg1EaXJlY3RDb21tYW5kEhYKBmNhY2hlZBgBIAEoCFIGY2FjaGVkEhkKCGV2ZW50X2lkGAIgASgFUgdldmVudElkEiUKDnJlY2VpdmVyX2dyb3VwGAMgASgFUg1yZWNlaXZlckdyb3VwEiUKDmNhY2hpbmdfb3B0aW9uGAQgASgFUg1jYWNoaW5nT3B0aW9uEiMKDWV2ZW50X29wdGlvbnMYBSABKAVSDGV2ZW50T3B0aW9ucxIgCgx0b19hY3Rvcl9pZHMYBiADKAVSCnRvQWN0b3JJZHMSEAoDbXNnGAcgASgMUgNtc2cSHAoJdGltZXN0YW1wGAggASgDUgl0aW1lc3RhbXASIgoNZnJvbV9hY3Rvcl9pZBgJIAEoBVILZnJvbUFjdG9ySWQSDAoBaRgKIAEoBVIBaRIlCg5pbnRlcmVzdF9ncm91cBgLIAEoBVINaW50ZXJlc3RHcm91cA==');
@$core.Deprecated('Use ackCommandDescriptor instead')
const AckCommand$json = const {
  '1': 'AckCommand',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'i', '3': 11, '4': 1, '5': 5, '10': 'i'},
  ],
};

/// Descriptor for `AckCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackCommandDescriptor = $convert.base64Decode('CgpBY2tDb21tYW5kEhwKCXRpbWVzdGFtcBgBIAEoA1IJdGltZXN0YW1wEgwKAWkYCyABKAVSAWk=');
@$core.Deprecated('Use eventsRequestDescriptor instead')
const EventsRequest$json = const {
  '1': 'EventsRequest',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 12, '10': 'msg'},
    const {'1': 'actor_id', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'actorId'},
    const {'1': 'event_id', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Int32Value', '10': 'eventId'},
  ],
};

/// Descriptor for `EventsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventsRequestDescriptor = $convert.base64Decode('Cg1FdmVudHNSZXF1ZXN0EhAKA21zZxgBIAEoDFIDbXNnEjYKCGFjdG9yX2lkGAIgASgLMhsuZ29vZ2xlLnByb3RvYnVmLkludDMyVmFsdWVSB2FjdG9ySWQSNgoIZXZlbnRfaWQYAyABKAsyGy5nb29nbGUucHJvdG9idWYuSW50MzJWYWx1ZVIHZXZlbnRJZA==');
@$core.Deprecated('Use eventsCommandDescriptor instead')
const EventsCommand$json = const {
  '1': 'EventsCommand',
  '2': const [
    const {'1': 'events', '3': 1, '4': 3, '5': 11, '6': '.game_protobuf_messages.proto.messages.DirectCommand', '10': 'events'},
  ],
};

/// Descriptor for `EventsCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventsCommandDescriptor = $convert.base64Decode('Cg1FdmVudHNDb21tYW5kEkwKBmV2ZW50cxgBIAMoCzI0LmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuRGlyZWN0Q29tbWFuZFIGZXZlbnRz');
@$core.Deprecated('Use interestGroupsDescriptor instead')
const InterestGroups$json = const {
  '1': 'InterestGroups',
  '2': const [
    const {'1': 'disabled_groups', '3': 1, '4': 3, '5': 5, '10': 'disabledGroups'},
    const {'1': 'enabled_groups', '3': 2, '4': 3, '5': 5, '10': 'enabledGroups'},
  ],
};

/// Descriptor for `InterestGroups`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List interestGroupsDescriptor = $convert.base64Decode('Cg5JbnRlcmVzdEdyb3VwcxInCg9kaXNhYmxlZF9ncm91cHMYASADKAVSDmRpc2FibGVkR3JvdXBzEiUKDmVuYWJsZWRfZ3JvdXBzGAIgAygFUg1lbmFibGVkR3JvdXBz');
@$core.Deprecated('Use joinLobbyRequestDescriptor instead')
const JoinLobbyRequest$json = const {
  '1': 'JoinLobbyRequest',
  '2': const [
    const {'1': 'lobby_id', '3': 1, '4': 1, '5': 9, '10': 'lobbyId'},
  ],
};

/// Descriptor for `JoinLobbyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinLobbyRequestDescriptor = $convert.base64Decode('ChBKb2luTG9iYnlSZXF1ZXN0EhkKCGxvYmJ5X2lkGAEgASgJUgdsb2JieUlk');
@$core.Deprecated('Use roomListCommandDescriptor instead')
const RoomListCommand$json = const {
  '1': 'RoomListCommand',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomOptions', '10': 'list'},
  ],
};

/// Descriptor for `RoomListCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomListCommandDescriptor = $convert.base64Decode('Cg9Sb29tTGlzdENvbW1hbmQSRgoEbGlzdBgBIAMoCzIyLmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuUm9vbU9wdGlvbnNSBGxpc3Q=');
@$core.Deprecated('Use appStatisticDescriptor instead')
const AppStatistic$json = const {
  '1': 'AppStatistic',
  '2': const [
    const {'1': 'count_of_rooms', '3': 1, '4': 1, '5': 5, '10': 'countOfRooms'},
    const {'1': 'count_of_players_on_router', '3': 2, '4': 1, '5': 5, '10': 'countOfPlayersOnRouter'},
    const {'1': 'count_of_players_in_rooms', '3': 3, '4': 1, '5': 5, '10': 'countOfPlayersInRooms'},
    const {'1': 'count_of_players', '3': 4, '4': 1, '5': 5, '10': 'countOfPlayers'},
  ],
};

/// Descriptor for `AppStatistic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appStatisticDescriptor = $convert.base64Decode('CgxBcHBTdGF0aXN0aWMSJAoOY291bnRfb2Zfcm9vbXMYASABKAVSDGNvdW50T2ZSb29tcxI6Chpjb3VudF9vZl9wbGF5ZXJzX29uX3JvdXRlchgCIAEoBVIWY291bnRPZlBsYXllcnNPblJvdXRlchI4Chljb3VudF9vZl9wbGF5ZXJzX2luX3Jvb21zGAMgASgFUhVjb3VudE9mUGxheWVyc0luUm9vbXMSKAoQY291bnRfb2ZfcGxheWVycxgEIAEoBVIOY291bnRPZlBsYXllcnM=');
@$core.Deprecated('Use statisticCommandDescriptor instead')
const StatisticCommand$json = const {
  '1': 'StatisticCommand',
  '2': const [
    const {'1': 'app_stats', '3': 1, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.AppStatistic', '10': 'appStats'},
  ],
};

/// Descriptor for `StatisticCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statisticCommandDescriptor = $convert.base64Decode('ChBTdGF0aXN0aWNDb21tYW5kElAKCWFwcF9zdGF0cxgBIAEoCzIzLmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuQXBwU3RhdGlzdGljUghhcHBTdGF0cw==');
@$core.Deprecated('Use errorCommandDescriptor instead')
const ErrorCommand$json = const {
  '1': 'ErrorCommand',
  '2': const [
    const {'1': 'error_info', '3': 1, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.ErrorInfo', '10': 'errorInfo'},
  ],
};

/// Descriptor for `ErrorCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorCommandDescriptor = $convert.base64Decode('CgxFcnJvckNvbW1hbmQSTwoKZXJyb3JfaW5mbxgBIAEoCzIwLmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuRXJyb3JJbmZvUgllcnJvckluZm8=');
@$core.Deprecated('Use requestMessageDescriptor instead')
const RequestMessage$json = const {
  '1': 'RequestMessage',
  '2': const [
    const {'1': 'i', '3': 1, '4': 1, '5': 5, '10': 'i'},
    const {'1': 'session_open', '3': 20, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.SessionOpenRequest', '9': 0, '10': 'sessionOpen'},
    const {'1': 'create_room', '3': 21, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.CreateRoomRequest', '9': 0, '10': 'createRoom'},
    const {'1': 'join_room', '3': 22, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.JoinRoomRequest', '9': 0, '10': 'joinRoom'},
    const {'1': 'update_property', '3': 23, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.UpdatePropertyRequest', '9': 0, '10': 'updateProperty'},
    const {'1': 'update_sys_property', '3': 24, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.UpdateSysPropertyRequest', '9': 0, '10': 'updateSysProperty'},
    const {'1': 'update_master_client', '3': 25, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.UpdateMasterClientRequest', '9': 0, '10': 'updateMasterClient'},
    const {'1': 'kick_member', '3': 26, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.KickMemberRequest', '9': 0, '10': 'kickMember'},
    const {'1': 'events', '3': 27, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.EventsRequest', '9': 0, '10': 'events'},
    const {'1': 'interest_groups', '3': 28, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.InterestGroups', '9': 0, '10': 'interestGroups'},
    const {'1': 'join_lobby', '3': 54, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.JoinLobbyRequest', '9': 0, '10': 'joinLobby'},
  ],
  '8': const [
    const {'1': 'request'},
  ],
};

/// Descriptor for `RequestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestMessageDescriptor = $convert.base64Decode('Cg5SZXF1ZXN0TWVzc2FnZRIMCgFpGAEgASgFUgFpEl4KDHNlc3Npb25fb3BlbhgUIAEoCzI5LmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuU2Vzc2lvbk9wZW5SZXF1ZXN0SABSC3Nlc3Npb25PcGVuElsKC2NyZWF0ZV9yb29tGBUgASgLMjguZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5DcmVhdGVSb29tUmVxdWVzdEgAUgpjcmVhdGVSb29tElUKCWpvaW5fcm9vbRgWIAEoCzI2LmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuSm9pblJvb21SZXF1ZXN0SABSCGpvaW5Sb29tEmcKD3VwZGF0ZV9wcm9wZXJ0eRgXIAEoCzI8LmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuVXBkYXRlUHJvcGVydHlSZXF1ZXN0SABSDnVwZGF0ZVByb3BlcnR5EnEKE3VwZGF0ZV9zeXNfcHJvcGVydHkYGCABKAsyPy5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLlVwZGF0ZVN5c1Byb3BlcnR5UmVxdWVzdEgAUhF1cGRhdGVTeXNQcm9wZXJ0eRJ0ChR1cGRhdGVfbWFzdGVyX2NsaWVudBgZIAEoCzJALmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuVXBkYXRlTWFzdGVyQ2xpZW50UmVxdWVzdEgAUhJ1cGRhdGVNYXN0ZXJDbGllbnQSWwoLa2lja19tZW1iZXIYGiABKAsyOC5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLktpY2tNZW1iZXJSZXF1ZXN0SABSCmtpY2tNZW1iZXISTgoGZXZlbnRzGBsgASgLMjQuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5FdmVudHNSZXF1ZXN0SABSBmV2ZW50cxJgCg9pbnRlcmVzdF9ncm91cHMYHCABKAsyNS5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLkludGVyZXN0R3JvdXBzSABSDmludGVyZXN0R3JvdXBzElgKCmpvaW5fbG9iYnkYNiABKAsyNy5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLkpvaW5Mb2JieVJlcXVlc3RIAFIJam9pbkxvYmJ5QgkKB3JlcXVlc3Q=');
@$core.Deprecated('Use responseMessageDescriptor instead')
const ResponseMessage$json = const {
  '1': 'ResponseMessage',
  '2': const [
    const {'1': 'i', '3': 1, '4': 1, '5': 5, '10': 'i'},
    const {'1': 'error_info', '3': 2, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.ErrorInfo', '10': 'errorInfo'},
    const {'1': 'create_room', '3': 20, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.CreateRoomResponse', '9': 0, '10': 'createRoom'},
    const {'1': 'join_room', '3': 21, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.JoinRoomResponse', '9': 0, '10': 'joinRoom'},
    const {'1': 'update_property', '3': 22, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.UpdatePropertyResponse', '9': 0, '10': 'updateProperty'},
    const {'1': 'update_sys_property', '3': 23, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.UpdateSysPropertyResponse', '9': 0, '10': 'updateSysProperty'},
    const {'1': 'update_master_client', '3': 24, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.UpdateMasterClientResponse', '9': 0, '10': 'updateMasterClient'},
    const {'1': 'kick_member', '3': 25, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.KickMemberResponse', '9': 0, '10': 'kickMember'},
    const {'1': 'ack', '3': 26, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.AckCommand', '9': 0, '10': 'ack'},
    const {'1': 'interest_groups', '3': 28, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.InterestGroups', '9': 0, '10': 'interestGroups'},
  ],
  '8': const [
    const {'1': 'response'},
  ],
};

/// Descriptor for `ResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseMessageDescriptor = $convert.base64Decode('Cg9SZXNwb25zZU1lc3NhZ2USDAoBaRgBIAEoBVIBaRJPCgplcnJvcl9pbmZvGAIgASgLMjAuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5FcnJvckluZm9SCWVycm9ySW5mbxJcCgtjcmVhdGVfcm9vbRgUIAEoCzI5LmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuQ3JlYXRlUm9vbVJlc3BvbnNlSABSCmNyZWF0ZVJvb20SVgoJam9pbl9yb29tGBUgASgLMjcuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5Kb2luUm9vbVJlc3BvbnNlSABSCGpvaW5Sb29tEmgKD3VwZGF0ZV9wcm9wZXJ0eRgWIAEoCzI9LmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuVXBkYXRlUHJvcGVydHlSZXNwb25zZUgAUg51cGRhdGVQcm9wZXJ0eRJyChN1cGRhdGVfc3lzX3Byb3BlcnR5GBcgASgLMkAuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5VcGRhdGVTeXNQcm9wZXJ0eVJlc3BvbnNlSABSEXVwZGF0ZVN5c1Byb3BlcnR5EnUKFHVwZGF0ZV9tYXN0ZXJfY2xpZW50GBggASgLMkEuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5VcGRhdGVNYXN0ZXJDbGllbnRSZXNwb25zZUgAUhJ1cGRhdGVNYXN0ZXJDbGllbnQSXAoLa2lja19tZW1iZXIYGSABKAsyOS5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLktpY2tNZW1iZXJSZXNwb25zZUgAUgpraWNrTWVtYmVyEkUKA2FjaxgaIAEoCzIxLmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuQWNrQ29tbWFuZEgAUgNhY2sSYAoPaW50ZXJlc3RfZ3JvdXBzGBwgASgLMjUuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5JbnRlcmVzdEdyb3Vwc0gAUg5pbnRlcmVzdEdyb3Vwc0IKCghyZXNwb25zZQ==');
@$core.Deprecated('Use bodyDescriptor instead')
const Body$json = const {
  '1': 'Body',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RequestMessage', '9': 0, '10': 'request'},
    const {'1': 'response', '3': 2, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.ResponseMessage', '9': 0, '10': 'response'},
    const {'1': 'direct', '3': 3, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.DirectCommand', '9': 0, '10': 'direct'},
    const {'1': 'room_notification', '3': 4, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomNotification', '9': 0, '10': 'roomNotification'},
    const {'1': 'events', '3': 5, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.EventsCommand', '9': 0, '10': 'events'},
    const {'1': 'statistic', '3': 50, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.StatisticCommand', '9': 0, '10': 'statistic'},
    const {'1': 'room_list', '3': 51, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.RoomListCommand', '9': 0, '10': 'roomList'},
    const {'1': 'error', '3': 127, '4': 1, '5': 11, '6': '.game_protobuf_messages.proto.messages.ErrorCommand', '9': 0, '10': 'error'},
  ],
  '8': const [
    const {'1': 'body'},
  ],
};

/// Descriptor for `Body`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bodyDescriptor = $convert.base64Decode('CgRCb2R5ElEKB3JlcXVlc3QYASABKAsyNS5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLlJlcXVlc3RNZXNzYWdlSABSB3JlcXVlc3QSVAoIcmVzcG9uc2UYAiABKAsyNi5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLlJlc3BvbnNlTWVzc2FnZUgAUghyZXNwb25zZRJOCgZkaXJlY3QYAyABKAsyNC5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLkRpcmVjdENvbW1hbmRIAFIGZGlyZWN0EmYKEXJvb21fbm90aWZpY2F0aW9uGAQgASgLMjcuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5Sb29tTm90aWZpY2F0aW9uSABSEHJvb21Ob3RpZmljYXRpb24STgoGZXZlbnRzGAUgASgLMjQuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5FdmVudHNDb21tYW5kSABSBmV2ZW50cxJXCglzdGF0aXN0aWMYMiABKAsyNy5nYW1lX3Byb3RvYnVmX21lc3NhZ2VzLnByb3RvLm1lc3NhZ2VzLlN0YXRpc3RpY0NvbW1hbmRIAFIJc3RhdGlzdGljElUKCXJvb21fbGlzdBgzIAEoCzI2LmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuUm9vbUxpc3RDb21tYW5kSABSCHJvb21MaXN0EksKBWVycm9yGH8gASgLMjMuZ2FtZV9wcm90b2J1Zl9tZXNzYWdlcy5wcm90by5tZXNzYWdlcy5FcnJvckNvbW1hbmRIAFIFZXJyb3JCBgoEYm9keQ==');
@$core.Deprecated('Use commandDescriptor instead')
const Command$json = const {
  '1': 'Command',
  '2': const [
    const {'1': 'cmd', '3': 1, '4': 1, '5': 14, '6': '.game_protobuf_messages.proto.messages.CommandType', '10': 'cmd'},
    const {'1': 'op', '3': 2, '4': 1, '5': 14, '6': '.game_protobuf_messages.proto.messages.OpType', '10': 'op'},
    const {'1': 'body', '3': 3, '4': 1, '5': 12, '10': 'body'},
  ],
};

/// Descriptor for `Command`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandDescriptor = $convert.base64Decode('CgdDb21tYW5kEkQKA2NtZBgBIAEoDjIyLmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuQ29tbWFuZFR5cGVSA2NtZBI9CgJvcBgCIAEoDjItLmdhbWVfcHJvdG9idWZfbWVzc2FnZXMucHJvdG8ubWVzc2FnZXMuT3BUeXBlUgJvcBISCgRib2R5GAMgASgMUgRib2R5');
