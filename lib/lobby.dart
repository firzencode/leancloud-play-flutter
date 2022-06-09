import 'package:leancloud_play_flutter/game_router.dart';
import 'package:leancloud_play_flutter/lobby_connection.dart';
import 'package:leancloud_play_flutter/lobby_room.dart';
import 'package:leancloud_play_flutter/logger.dart';
import 'package:leancloud_play_flutter/play_error.dart';
import 'package:leancloud_play_flutter/play_error_code.dart';

import 'client.dart';
import 'event.dart';
import 'fsm.dart';

class Lobby {
  final StateMachine _fsm;
  final Client _client;

  List<LobbyRoom> lobbyRoomList = [];

  LobbyConnection? _lobbyConn;

  Lobby(Client client)
      : _client = client,
        _fsm = StateMachine() {
    _fsm.newStartState('init');
    _fsm.newStopState('closed');
    _fsm.newState('joining');
    _fsm.newState('lobby');
    _fsm.newState('leaving');

    _fsm.addStateTransition(name: 'join', from: ['init'], to: 'joining');
    _fsm.addStateTransition(name: 'joined', from: ['joining'], to: 'lobby');
    _fsm.addStateTransition(name: 'joinFailed', from: ['joining'], to: 'init');
    _fsm.addStateTransition(name: 'leave', from: ['lobby'], to: 'leaving');
    _fsm.addStateTransition(
        name: 'close',
        from: ['init', 'joining', 'lobby', 'leaving'],
        to: 'closed');
    _fsm['lobby'].onEntry(() {
      _lobbyConn!.on(ROOM_LIST_UPDATED_EVENT, this, (ev, context) {
        var roomList = ev.eventData as List<LobbyRoom>;
        lobbyRoomList = roomList;
        _client.emit(Event.LOBBY_ROOM_LIST_UPDATED);
      });
    });
    _fsm['lobby'].onExit(() {
      _lobbyConn!.clear();
    });
  }

  Future<void> join() async {
    if (!_fsm.canCallStateTransition('join')) {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${_fsm.current?.identifier}');
    }
    _fsm.callStateTransition('join');
    AuthorizeResult authResult;
    var lobbyService = _client.lobbyService!;
    try {
      authResult = await lobbyService.authorize();
    } catch (e) {
      _fsm.callStateTransition('joinFailed');
      rethrow;
    }
    try {
      var url = authResult.url;
      var sessionToken = authResult.sessionToken;
      var appId = _client.appId;
      var gameVersion = _client.gameVersion;
      var userId = _client.userId;
      _lobbyConn = LobbyConnection();
      var lobbyUrl = url
          .replaceFirst('https://', 'wss://')
          .replaceFirst('http://', 'ws://');
      debug('lobby url: $lobbyUrl');
      await _lobbyConn!.connect(
        appId: appId,
        server: lobbyUrl,
        gameVersion: gameVersion,
        userId: userId,
        sessionToken: sessionToken,
      );
      await _lobbyConn!.joinLobby();
      _fsm.callStateTransition('joined');
    } catch (e) {
      await _lobbyConn?.close();
      _fsm.callStateTransition('joinFailed');
      rethrow;
    }
  }

  Future<void> leave() async {
    try {
      await _lobbyConn?.leaveLobby();
    } finally {
      await _lobbyConn?.close();
    }
  }

  Future<void> close() async {
    if (_fsm.canCallStateTransition('close')) {
      await _lobbyConn?.close();
    }
  }
}
