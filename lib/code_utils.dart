import 'package:leancloud_play_flutter/proto/generic_collection.pbserver.dart';

var typeNameMap = <String, CustomType>{};
var typeIdMap = <int, CustomType>{};

void registerType(
  Type type,
  int typeId,
  Function serializeMethod,
  Function deserializeMethod,
) {
  var customType = CustomType(
    type: type,
    typeId: typeId,
    serializeMethod: serializeMethod,
    deserializeMethod: deserializeMethod,
  );

  var typeName = type.toString();
  typeNameMap[typeName] = customType;
  typeIdMap[typeId] = customType;
}

class CustomType {
  Type type;
  int typeId;
  Function serializeMethod;
  Function deserializeMethod;

  CustomType({
    required this.type,
    required this.typeId,
    required this.serializeMethod,
    required this.deserializeMethod,
  });
}

GenericCollectionValue serialize(dynamic val) {
  var genericVal = GenericCollectionValue();
  if (val == null) {
    genericVal.type = GenericCollectionValue_Type.NULL;
  } else if (val is bool) {
    genericVal.type = GenericCollectionValue_Type.BOOL;
    genericVal.boolValue = val;
  } else if (val is int) {
    genericVal.type = GenericCollectionValue_Type.INT;
    genericVal.intValue = val;
  } else if (val is double) {
    genericVal.type = GenericCollectionValue_Type.DOUBLE;
    genericVal.floatValue = val;
  } else if (val is String) {
    genericVal.type = GenericCollectionValue_Type.STRING;
    genericVal.stringValue = val;
  } else if (val is List) {
    // 数组
    genericVal.type = GenericCollectionValue_Type.ARRAY;
    var vList = <GenericCollectionValue>[];
    for (var v in val) {
      vList.add(serialize(v));
    }
    var list = GenericCollection(listValue: vList);
    genericVal.bytesValue = list.writeToBuffer();
  } else if (val is Object) {
    var typeName = val.runtimeType.toString();
    var customType = typeNameMap[typeName];
    if (customType != null) {
      // 自定义类型
      genericVal.type = GenericCollectionValue_Type.OBJECT;
      genericVal.objectTypeId = customType.typeId;
      genericVal.bytesValue = customType.serializeMethod(val);
    } else {
      // Map
      genericVal.type = GenericCollectionValue_Type.MAP;
      genericVal.bytesValue = serializeObject(val as Map<String, dynamic>?)!;
    }
  } else {
    // 其他类型
    throw Exception('${val.runtimeType.toString()} is not supported');
  }

  return genericVal;
}

dynamic deserialize(GenericCollectionValue genericVal) {
  var val;
  switch (genericVal.type) {
    case GenericCollectionValue_Type.NULL:
      // Nothing
      break;
    case GenericCollectionValue_Type.BOOL:
      val = genericVal.boolValue;
      break;
    case GenericCollectionValue_Type.BYTE:
      // val = genericVal.byt
      // TODO ?? no method
      break;
    case GenericCollectionValue_Type.SHORT:
      // val = genericVal.shortValue
      // TODO ?? no method
      break;
    case GenericCollectionValue_Type.INT:
      val = genericVal.intValue;
      break;
    case GenericCollectionValue_Type.LONG:
      val = genericVal.longIntValue;
      break;
    case GenericCollectionValue_Type.FLOAT:
      val = genericVal.floatValue;
      break;
    case GenericCollectionValue_Type.DOUBLE:
      val = genericVal.doubleValue;
      break;
    case GenericCollectionValue_Type.STRING:
      val = genericVal.stringValue;
      break;
    case GenericCollectionValue_Type.MAP:
      var bytes = genericVal.bytesValue;
      val = deserializeObject(bytes);
      break;
    case GenericCollectionValue_Type.ARRAY:
      var bytes = genericVal.bytesValue;
      val = [];
      var list = GenericCollection.fromBuffer(bytes);
      for (var v in list.listValue) {
        (val as List).add(deserialize(v));
      }
      break;
    case GenericCollectionValue_Type.OBJECT:
      var typeId = genericVal.objectTypeId;
      if (typeIdMap.containsKey(typeId)) {
        var bytes = genericVal.bytesValue;
        val = typeIdMap[typeId]!.deserializeMethod(bytes);
      } else {
        throw Exception('type id: $typeId is not supported');
      }
      break;
    case GenericCollectionValue_Type.BYTES:
      // TODO ??
      break;
    default:
      break;
  }
  return val;
}

List<int>? serializeObject(Map<String, dynamic>? obj) {
  if (obj == null) {
    return null;
  }
  var entryList = <GenericCollection_MapEntry>[];
  for (var key in obj.keys) {
    var val = obj[key];
    var entry = GenericCollection_MapEntry();
    entry.key = key;
    entry.val = serialize(val);
    entryList.add(entry);
  }
  var map = GenericCollection(mapEntryValue: entryList);
  return map.writeToBuffer();
}

Map<String, dynamic>? deserializeObject(List<int>? bytes) {
  if (bytes == null) {
    return null;
  }

  var map = GenericCollection.fromBuffer(bytes);
  var obj = <String, dynamic>{};
  for (var entry in map.mapEntryValue) {
    obj[entry.key] = deserialize(entry.val);
  }
  return obj;
}
