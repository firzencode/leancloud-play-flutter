///
//  Generated code. Do not modify.
//  source: generic_collection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GenericCollectionValue_Type extends $pb.ProtobufEnum {
  static const GenericCollectionValue_Type NULL = GenericCollectionValue_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NULL');
  static const GenericCollectionValue_Type BYTES = GenericCollectionValue_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BYTES');
  static const GenericCollectionValue_Type BYTE = GenericCollectionValue_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BYTE');
  static const GenericCollectionValue_Type SHORT = GenericCollectionValue_Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SHORT');
  static const GenericCollectionValue_Type INT = GenericCollectionValue_Type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INT');
  static const GenericCollectionValue_Type LONG = GenericCollectionValue_Type._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LONG');
  static const GenericCollectionValue_Type BOOL = GenericCollectionValue_Type._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BOOL');
  static const GenericCollectionValue_Type FLOAT = GenericCollectionValue_Type._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FLOAT');
  static const GenericCollectionValue_Type DOUBLE = GenericCollectionValue_Type._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOUBLE');
  static const GenericCollectionValue_Type OBJECT = GenericCollectionValue_Type._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OBJECT');
  static const GenericCollectionValue_Type STRING = GenericCollectionValue_Type._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STRING');
  static const GenericCollectionValue_Type MAP = GenericCollectionValue_Type._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MAP');
  static const GenericCollectionValue_Type ARRAY = GenericCollectionValue_Type._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARRAY');

  static const $core.List<GenericCollectionValue_Type> values = <GenericCollectionValue_Type> [
    NULL,
    BYTES,
    BYTE,
    SHORT,
    INT,
    LONG,
    BOOL,
    FLOAT,
    DOUBLE,
    OBJECT,
    STRING,
    MAP,
    ARRAY,
  ];

  static final $core.Map<$core.int, GenericCollectionValue_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GenericCollectionValue_Type? valueOf($core.int value) => _byValue[value];

  const GenericCollectionValue_Type._($core.int v, $core.String n) : super(v, n);
}

