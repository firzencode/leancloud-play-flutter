class LobbyRoom {
  final String _roomName;
  final int _maxPlayerCount;
  final List<String> _expectedUserIds;
  final int _emptyRoomTtl;
  final int _playerTtl;
  final int _playerCount;
  final Map<String, dynamic>? _customRoomProperties;
  final bool _visible;
  final bool _open;

  String get roomName => _roomName;
  int get maxPlayerCount => _maxPlayerCount;
  List<String> get expectedUserIds => _expectedUserIds;
  int get emptyRoomTtl => _emptyRoomTtl;
  int get playerTtl => _playerTtl;
  int get playerCount => _playerCount;
  Map<String, dynamic>? get customRoomProperties => _customRoomProperties;
  bool get visible => _visible;
  bool get open => _open;

  LobbyRoom({
    required String roomName,
    required int maxPlayerCount,
    required List<String> expectedUserIds,
    required int emptyRoomTtl,
    required int playerTtl,
    required int playerCount,
    required Map<String, dynamic>? customRoomProperties,
    required bool visible,
    required bool open,
  })  : _roomName = roomName,
        _maxPlayerCount = maxPlayerCount,
        _expectedUserIds = expectedUserIds,
        _emptyRoomTtl = emptyRoomTtl,
        _playerTtl = playerTtl,
        _playerCount = playerCount,
        _customRoomProperties = customRoomProperties,
        _visible = visible,
        _open = open;
}
