///
//  Generated code. Do not modify.
//  source: generic_collection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'generic_collection.pbenum.dart';

export 'generic_collection.pbenum.dart';

enum GenericCollectionValue_Value {
  intValue, 
  longIntValue, 
  boolValue, 
  stringValue, 
  bytesValue, 
  floatValue, 
  doubleValue, 
  notSet
}

class GenericCollectionValue extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GenericCollectionValue_Value> _GenericCollectionValue_ValueByTag = {
    2 : GenericCollectionValue_Value.intValue,
    3 : GenericCollectionValue_Value.longIntValue,
    4 : GenericCollectionValue_Value.boolValue,
    5 : GenericCollectionValue_Value.stringValue,
    6 : GenericCollectionValue_Value.bytesValue,
    7 : GenericCollectionValue_Value.floatValue,
    8 : GenericCollectionValue_Value.doubleValue,
    0 : GenericCollectionValue_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenericCollectionValue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cn.leancloud.play.proto'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7, 8])
    ..e<GenericCollectionValue_Type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: GenericCollectionValue_Type.NULL, valueOf: GenericCollectionValue_Type.valueOf, enumValues: GenericCollectionValue_Type.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'intValue', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longIntValue')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boolValue')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stringValue')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytesValue', $pb.PbFieldType.OY)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'floatValue', $pb.PbFieldType.OF)
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'doubleValue', $pb.PbFieldType.OD)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'objectTypeId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GenericCollectionValue._() : super();
  factory GenericCollectionValue({
    GenericCollectionValue_Type? type,
    $core.int? intValue,
    $fixnum.Int64? longIntValue,
    $core.bool? boolValue,
    $core.String? stringValue,
    $core.List<$core.int>? bytesValue,
    $core.double? floatValue,
    $core.double? doubleValue,
    $core.int? objectTypeId,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (intValue != null) {
      _result.intValue = intValue;
    }
    if (longIntValue != null) {
      _result.longIntValue = longIntValue;
    }
    if (boolValue != null) {
      _result.boolValue = boolValue;
    }
    if (stringValue != null) {
      _result.stringValue = stringValue;
    }
    if (bytesValue != null) {
      _result.bytesValue = bytesValue;
    }
    if (floatValue != null) {
      _result.floatValue = floatValue;
    }
    if (doubleValue != null) {
      _result.doubleValue = doubleValue;
    }
    if (objectTypeId != null) {
      _result.objectTypeId = objectTypeId;
    }
    return _result;
  }
  factory GenericCollectionValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenericCollectionValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenericCollectionValue clone() => GenericCollectionValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenericCollectionValue copyWith(void Function(GenericCollectionValue) updates) => super.copyWith((message) => updates(message as GenericCollectionValue)) as GenericCollectionValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenericCollectionValue create() => GenericCollectionValue._();
  GenericCollectionValue createEmptyInstance() => create();
  static $pb.PbList<GenericCollectionValue> createRepeated() => $pb.PbList<GenericCollectionValue>();
  @$core.pragma('dart2js:noInline')
  static GenericCollectionValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenericCollectionValue>(create);
  static GenericCollectionValue? _defaultInstance;

  GenericCollectionValue_Value whichValue() => _GenericCollectionValue_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GenericCollectionValue_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(GenericCollectionValue_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get intValue => $_getIZ(1);
  @$pb.TagNumber(2)
  set intValue($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIntValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntValue() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get longIntValue => $_getI64(2);
  @$pb.TagNumber(3)
  set longIntValue($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLongIntValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongIntValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get boolValue => $_getBF(3);
  @$pb.TagNumber(4)
  set boolValue($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBoolValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoolValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get stringValue => $_getSZ(4);
  @$pb.TagNumber(5)
  set stringValue($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStringValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearStringValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get bytesValue => $_getN(5);
  @$pb.TagNumber(6)
  set bytesValue($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBytesValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearBytesValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get floatValue => $_getN(6);
  @$pb.TagNumber(7)
  set floatValue($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFloatValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearFloatValue() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get doubleValue => $_getN(7);
  @$pb.TagNumber(8)
  set doubleValue($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDoubleValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearDoubleValue() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get objectTypeId => $_getIZ(8);
  @$pb.TagNumber(9)
  set objectTypeId($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasObjectTypeId() => $_has(8);
  @$pb.TagNumber(9)
  void clearObjectTypeId() => clearField(9);
}

class GenericCollection_MapEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenericCollection.MapEntry', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cn.leancloud.play.proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOM<GenericCollectionValue>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'val', subBuilder: GenericCollectionValue.create)
    ..hasRequiredFields = false
  ;

  GenericCollection_MapEntry._() : super();
  factory GenericCollection_MapEntry({
    $core.String? key,
    GenericCollectionValue? val,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (val != null) {
      _result.val = val;
    }
    return _result;
  }
  factory GenericCollection_MapEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenericCollection_MapEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenericCollection_MapEntry clone() => GenericCollection_MapEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenericCollection_MapEntry copyWith(void Function(GenericCollection_MapEntry) updates) => super.copyWith((message) => updates(message as GenericCollection_MapEntry)) as GenericCollection_MapEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenericCollection_MapEntry create() => GenericCollection_MapEntry._();
  GenericCollection_MapEntry createEmptyInstance() => create();
  static $pb.PbList<GenericCollection_MapEntry> createRepeated() => $pb.PbList<GenericCollection_MapEntry>();
  @$core.pragma('dart2js:noInline')
  static GenericCollection_MapEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenericCollection_MapEntry>(create);
  static GenericCollection_MapEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  GenericCollectionValue get val => $_getN(1);
  @$pb.TagNumber(2)
  set val(GenericCollectionValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearVal() => clearField(2);
  @$pb.TagNumber(2)
  GenericCollectionValue ensureVal() => $_ensure(1);
}

class GenericCollection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenericCollection', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cn.leancloud.play.proto'), createEmptyInstance: create)
    ..pc<GenericCollectionValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listValue', $pb.PbFieldType.PM, subBuilder: GenericCollectionValue.create)
    ..pc<GenericCollection_MapEntry>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mapEntryValue', $pb.PbFieldType.PM, subBuilder: GenericCollection_MapEntry.create)
    ..hasRequiredFields = false
  ;

  GenericCollection._() : super();
  factory GenericCollection({
    $core.Iterable<GenericCollectionValue>? listValue,
    $core.Iterable<GenericCollection_MapEntry>? mapEntryValue,
  }) {
    final _result = create();
    if (listValue != null) {
      _result.listValue.addAll(listValue);
    }
    if (mapEntryValue != null) {
      _result.mapEntryValue.addAll(mapEntryValue);
    }
    return _result;
  }
  factory GenericCollection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenericCollection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenericCollection clone() => GenericCollection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenericCollection copyWith(void Function(GenericCollection) updates) => super.copyWith((message) => updates(message as GenericCollection)) as GenericCollection; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenericCollection create() => GenericCollection._();
  GenericCollection createEmptyInstance() => create();
  static $pb.PbList<GenericCollection> createRepeated() => $pb.PbList<GenericCollection>();
  @$core.pragma('dart2js:noInline')
  static GenericCollection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenericCollection>(create);
  static GenericCollection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GenericCollectionValue> get listValue => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<GenericCollection_MapEntry> get mapEntryValue => $_getList(1);
}

