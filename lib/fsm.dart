import 'package:leancloud_play_flutter/logger.dart';
import 'package:statemachine/statemachine.dart';

class StateMachine extends Machine<String> {
  Map<String, StateTransition> stateTransitionMap = {};

  void addStateTransition({
    required String name,
    required List<String> from,
    required String to,
  }) {
    var stateTransition = StateTransition(
      name: name,
      from: from,
      to: to,
      fsm: this,
    );
    stateTransitionMap[name] = stateTransition;
  }

  bool canCallStateTransition(String name) {
    var stateTransition = stateTransitionMap[name];
    if (stateTransition == null) {
      error('State Machine can not find state transition: $name');
      return false;
    }

    return stateTransition.from.contains(current?.identifier);
  }

  void callStateTransition(String name) {
    var stateTransition = stateTransitionMap[name];
    if (stateTransition == null) {
      error('State Machine can not find state transition: $name');
      return;
    }

    if (!stateTransition.from.contains(current?.identifier)) {
      error(
          'State Machine current state invalidated. current: ${current?.identifier}, valid: ${stateTransition.from.toString()}');
      return;
    }

    this[stateTransition.to].enter();
  }
}

class StateTransition {
  String name;
  List<String> from;
  String to;
  StateMachine fsm;

  StateTransition({
    required this.name,
    required this.from,
    required this.to,
    required this.fsm,
  });
}
