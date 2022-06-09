class LobbyRoom {
  String _roomName;
  int _maxPlayerCount;
  List<String> _expectedUserIds;
  int _emptyRoomTtl;
  int _playerTtl;
  int _playerCount;
  Map<String, dynamic>? _customRoomProperties;
  bool _visible;
  bool _open;

  LobbyRoom(
      {required String roomName,
      required int maxPlayerCount,
      required List<String> expectedUserIds,
      required int emptyRoomTtl,
      required int playerTtl,
      required int playerCount,
      required Map<String, dynamic>? customRoomProperties,
      required bool visible,
      required bool open})
      : _roomName = roomName,
        _maxPlayerCount = maxPlayerCount,
        _expectedUserIds = expectedUserIds,
        _emptyRoomTtl = emptyRoomTtl,
        _playerTtl = playerTtl,
        _playerCount = playerCount,
        _customRoomProperties = customRoomProperties,
        _visible = visible,
        _open = open;
}
