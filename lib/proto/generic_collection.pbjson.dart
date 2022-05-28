///
//  Generated code. Do not modify.
//  source: generic_collection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genericCollectionValueDescriptor instead')
const GenericCollectionValue$json = const {
  '1': 'GenericCollectionValue',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.cn.leancloud.play.proto.GenericCollectionValue.Type', '10': 'type'},
    const {'1': 'int_value', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'intValue'},
    const {'1': 'long_int_value', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'longIntValue'},
    const {'1': 'bool_value', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    const {'1': 'string_value', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    const {'1': 'bytes_value', '3': 6, '4': 1, '5': 12, '9': 0, '10': 'bytesValue'},
    const {'1': 'float_value', '3': 7, '4': 1, '5': 2, '9': 0, '10': 'floatValue'},
    const {'1': 'double_value', '3': 8, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    const {'1': 'object_type_id', '3': 9, '4': 1, '5': 5, '10': 'objectTypeId'},
  ],
  '4': const [GenericCollectionValue_Type$json],
  '8': const [
    const {'1': 'value'},
  ],
};

@$core.Deprecated('Use genericCollectionValueDescriptor instead')
const GenericCollectionValue_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'NULL', '2': 0},
    const {'1': 'BYTES', '2': 1},
    const {'1': 'BYTE', '2': 2},
    const {'1': 'SHORT', '2': 3},
    const {'1': 'INT', '2': 4},
    const {'1': 'LONG', '2': 5},
    const {'1': 'BOOL', '2': 6},
    const {'1': 'FLOAT', '2': 7},
    const {'1': 'DOUBLE', '2': 8},
    const {'1': 'OBJECT', '2': 9},
    const {'1': 'STRING', '2': 10},
    const {'1': 'MAP', '2': 11},
    const {'1': 'ARRAY', '2': 12},
  ],
};

/// Descriptor for `GenericCollectionValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genericCollectionValueDescriptor = $convert.base64Decode('ChZHZW5lcmljQ29sbGVjdGlvblZhbHVlEkgKBHR5cGUYASABKA4yNC5jbi5sZWFuY2xvdWQucGxheS5wcm90by5HZW5lcmljQ29sbGVjdGlvblZhbHVlLlR5cGVSBHR5cGUSHQoJaW50X3ZhbHVlGAIgASgFSABSCGludFZhbHVlEiYKDmxvbmdfaW50X3ZhbHVlGAMgASgDSABSDGxvbmdJbnRWYWx1ZRIfCgpib29sX3ZhbHVlGAQgASgISABSCWJvb2xWYWx1ZRIjCgxzdHJpbmdfdmFsdWUYBSABKAlIAFILc3RyaW5nVmFsdWUSIQoLYnl0ZXNfdmFsdWUYBiABKAxIAFIKYnl0ZXNWYWx1ZRIhCgtmbG9hdF92YWx1ZRgHIAEoAkgAUgpmbG9hdFZhbHVlEiMKDGRvdWJsZV92YWx1ZRgIIAEoAUgAUgtkb3VibGVWYWx1ZRIkCg5vYmplY3RfdHlwZV9pZBgJIAEoBVIMb2JqZWN0VHlwZUlkIpABCgRUeXBlEggKBE5VTEwQABIJCgVCWVRFUxABEggKBEJZVEUQAhIJCgVTSE9SVBADEgcKA0lOVBAEEggKBExPTkcQBRIICgRCT09MEAYSCQoFRkxPQVQQBxIKCgZET1VCTEUQCBIKCgZPQkpFQ1QQCRIKCgZTVFJJTkcQChIHCgNNQVAQCxIJCgVBUlJBWRAMQgcKBXZhbHVl');
@$core.Deprecated('Use genericCollectionDescriptor instead')
const GenericCollection$json = const {
  '1': 'GenericCollection',
  '2': const [
    const {'1': 'list_value', '3': 1, '4': 3, '5': 11, '6': '.cn.leancloud.play.proto.GenericCollectionValue', '10': 'listValue'},
    const {'1': 'map_entry_value', '3': 2, '4': 3, '5': 11, '6': '.cn.leancloud.play.proto.GenericCollection.MapEntry', '10': 'mapEntryValue'},
  ],
  '3': const [GenericCollection_MapEntry$json],
};

@$core.Deprecated('Use genericCollectionDescriptor instead')
const GenericCollection_MapEntry$json = const {
  '1': 'MapEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'val', '3': 2, '4': 1, '5': 11, '6': '.cn.leancloud.play.proto.GenericCollectionValue', '10': 'val'},
  ],
};

/// Descriptor for `GenericCollection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genericCollectionDescriptor = $convert.base64Decode('ChFHZW5lcmljQ29sbGVjdGlvbhJOCgpsaXN0X3ZhbHVlGAEgAygLMi8uY24ubGVhbmNsb3VkLnBsYXkucHJvdG8uR2VuZXJpY0NvbGxlY3Rpb25WYWx1ZVIJbGlzdFZhbHVlElsKD21hcF9lbnRyeV92YWx1ZRgCIAMoCzIzLmNuLmxlYW5jbG91ZC5wbGF5LnByb3RvLkdlbmVyaWNDb2xsZWN0aW9uLk1hcEVudHJ5Ug1tYXBFbnRyeVZhbHVlGl8KCE1hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EkEKA3ZhbBgCIAEoCzIvLmNuLmxlYW5jbG91ZC5wbGF5LnByb3RvLkdlbmVyaWNDb2xsZWN0aW9uVmFsdWVSA3ZhbA==');
