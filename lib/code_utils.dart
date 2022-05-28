import 'package:leancloud_play_flutter/proto/generic_collection.pbserver.dart';

List<int>? serializeObject(Map<String, dynamic>? obj) {
  if (obj == null) {
    return null;
  }
  var entryList = <GenericCollection_MapEntry>[];
  for (var key in obj.keys) {
    var val = obj[key];
    var entry = GenericCollection_MapEntry();
    entry.key = key;
    entry.val = val;
    entryList.add(entry);
  }
  var map = GenericCollection(mapEntryValue: entryList);
  return map.writeToBuffer();
}
