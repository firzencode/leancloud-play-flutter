import 'client.dart';
import 'fsm.dart';

class Lobby {
  Client _client;
  final StateMachine _fsm = StateMachine();

  Lobby(Client client) : _client = client {
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
      // TODO
    });
    _fsm['lobby'].onExit(() {
      // TODO
    });
  }

  Future<void> join() async {}

  Future<void> leave() async {}

  Future<void> close() async {}
}
