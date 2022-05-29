import 'dart:async';
import 'dart:io';

import 'package:eventify/eventify.dart';
import 'package:leancloud_play_flutter/fsm.dart';
import 'package:leancloud_play_flutter/play_error.dart';
import 'package:leancloud_play_flutter/play_error_code.dart';
import 'package:leancloud_play_flutter/proto/messages.pb.dart';

import 'logger.dart';

const MAX_NO_PONG_TIMES = 2;
const ERROR_EVENT = 'ERROR_EVENT';
const DISCONNECT_EVENT = 'DISCONNECT_EVENT';

class MessageQueueItem {
  CommandType cmd;
  OpType op;
  Body body;

  MessageQueueItem({
    required this.cmd,
    required this.op,
    required this.body,
  });
}

class Message {
  CommandType cmd;
  OpType op;
  ResponseMessage res;

  Message({
    required this.cmd,
    required this.op,
    required this.res,
  });
}

class ErrorEventData {
  int code;
  String detail;

  ErrorEventData({required this.code, required this.detail});
}

abstract class Connection extends EventEmitter {
  var requests = <int, Completer<Message>>{};
  int msgId = 0;
  Timer? pingTimer;
  Timer? pongTimer;
  bool isMessageQueueRunning = false;
  var messageQueue = <MessageQueueItem>[];
  StateMachine fsm = StateMachine();

  late WebSocket ws;
  late String userId;
  StreamSubscription? wsListener;

  String get flag;

  Connection() {
    fsm.newStartState('init');
    fsm.newStopState('closed');
    fsm.newState('connecting');
    fsm.newState('connected');
    fsm.newState('disconnected');

    fsm.addStateTransition(name: 'connect', from: ['init'], to: 'connecting');
    fsm.addStateTransition(
        name: 'connected', from: ['connecting'], to: 'connected');
    fsm.addStateTransition(
        name: 'connectFailed', from: ['connecting'], to: 'init');
    fsm.addStateTransition(
        name: 'disconnect', from: ['connected'], to: 'disconnected');
    fsm.addStateTransition(
        name: 'close',
        from: ['init', 'connecting', 'connected', 'disconnected'],
        to: 'closed');
    fsm.start();
  }

  Future<Message> connect({
    required String appId,
    required String server,
    required String gameVersion,
    required String userId,
    required String sessionToken,
  }) async {
    this.userId = userId;
    fsm.callStateTransition('connect');
    var i = _getMsgId();
    var url = getFastOpenUrl(
      server: server,
      appId: appId,
      gameVersion: gameVersion,
      userId: userId,
      sessionToken: sessionToken,
    );
    url = '$url&i=$i';
    debug('url: $url');
    var completer = Completer<Message>();

    // 尝试建立连接
    try {
      ws = await WebSocket.connect(url, protocols: ['protobuf.1']);
    } catch (e) {
      error(e.toString());
      return Future.error(PlayError(
          code: PlayErrorCode.OPEN_WEBSOCKET_ERROR,
          detail: 'websocket closed'));
    }
    debug('$userId : $flag connection open');
    // 错误的状态
    if (fsm.current?.identifier == 'closed') {
      await wsListener?.cancel();
      ws.close();
      return Future.error('unknown error, open ws but fsm closed');
    }

    // 每次连接成功后将会得到最新快照，之前的缓存没有意义了
    isMessageQueueRunning = true;
    messageQueue = [];
    _ping();
    wsListener = ws.listen((event) {
      // debug(event.runtimeType.toString());
      _pong();
      var command = Command.fromBuffer(event);
      var cmd = command.cmd;
      var op = command.op;
      var body = Body.fromBuffer(command.body);
      debug('$userId : $flag <- ${cmd.name}/${op.name}: ${body.writeToJson()}');
      if (isMessageQueueRunning) {
        _handleCommand(cmd, op, body);
      } else {
        debug(
            '[DELAY] $userId : $flag <- ${cmd.name}/${op.name}: ${body.writeToJson()}');
        messageQueue.add(MessageQueueItem(cmd: cmd, op: op, body: body));
      }
    }, onError: (error) {
      // 源代码里没有地方处理 error？？
      // fsm.callStateTransition('connectFailed');
      // if (!completer.isCompleted) {
      //   completer.completeError(error);
      // }
    }, onDone: () {
      _stopKeppAlive();
      fsm.callStateTransition('disconnect');
      emit(DISCONNECT_EVENT);
    });

    fsm.callStateTransition('connected');
    // 标记
    requests[i] = completer;
    return completer.future;
  }

  void _handleCommand(CommandType cmd, OpType op, Body body) {
    if (body.hasResponse()) {
      // 应答
      var res = body.response;
      var i = res.i;
      if (requests.containsKey(i)) {
        var completer = requests[i]!;
        if (res.hasErrorInfo()) {
          var errorInfo = res.errorInfo;
          var code = errorInfo.reasonCode;
          var detail = errorInfo.detail;
          if (!completer.isCompleted) {
            completer.completeError(PlayError(code: code, detail: detail));
          }
        } else {
          if (!completer.isCompleted) {
            completer.complete(Message(cmd: cmd, op: op, res: res));
          }
        }
      } else {
        // 异常情况
        error('error response: ${res.writeToJson()}');
      }
    } else {
      // 通知
      handleNotification(cmd, op, body);
    }
  }

  Future<Message> sendRequest(
      CommandType cmd, OpType op, RequestMessage req) async {
    var msgId = _getMsgId();
    req.i = msgId;
    var body = Body();
    body.request = req;
    var completer = Completer<Message>();
    requests[msgId] = completer;
    sendCommand(cmd, op, body);
    return completer.future;
  }

  void sendCommand(CommandType cmd, OpType op, Body body) {
    var command = Command();
    command.cmd = cmd;
    command.op = op;
    command.body = body.writeToBuffer();
    debug('$userId : $flag -> ${cmd.name}/${op.name}: ${body.writeToJson()}');
    ws.add(command.writeToBuffer());
  }

  Future<void> close() async {
    if (!fsm.canCallStateTransition('close')) {
      throw Exception('no close: ${fsm.current?.identifier}');
    }
    _stopKeppAlive();
    try {
      debug('$userId : $flag close');
      await wsListener?.cancel();
      await ws.close();
      debug('$userId : $flag closed');
    } catch (e) {
      return Future.error(e);
    }
  }

  // abstract
  String getFastOpenUrl({
    required String server,
    required String appId,
    required String gameVersion,
    required String userId,
    required String sessionToken,
  });

  Future<void> simulateDisconnect() async {
    close();
    emit(DISCONNECT_EVENT);
    return;
  }

  int _getMsgId() {
    msgId += 1;
    return msgId;
  }

  void _ping() {
    if (pingTimer?.isActive == true) {
      pingTimer!.cancel();
      pingTimer = null;
    }

    pingTimer = Timer(getPingDuration(), () {
      debug('ping');
      sendCommand(CommandType.echo, OpType.none, Body());
    });
  }

  void _pong() {
    if (pongTimer?.isActive == true) {
      pongTimer!.cancel();
      pongTimer = null;
    }

    pongTimer = Timer(getPingDuration() * MAX_NO_PONG_TIMES, () {
      debug('pong timeout');
      ws.close();
    });
  }

  void _stopKeppAlive() {
    if (pingTimer?.isActive == true) {
      pingTimer!.cancel();
      pingTimer = null;
    }

    if (pongTimer?.isActive == true) {
      pongTimer!.cancel();
      pongTimer = null;
    }
  }

  // abstract
  Duration getPingDuration();

  // abstract
  void handleNotification(CommandType cmd, OpType op, Body body);

  void handleErrorNotify(ErrorCommand err) {
    var errorInfo = err.errorInfo;
    var code = errorInfo.reasonCode;
    var detail = errorInfo.detail;
    emit(ERROR_EVENT, this, ErrorEventData(code: code, detail: detail));
  }

  void handleUnknownMsg(CommandType cmd, OpType op, Body body) {
    error(
        '[UNKNOWN COMMAND] $userId : $flag -> $cmd/$op: ${body.writeToJson()}');
  }

  pauseMessageQueue() {
    isMessageQueueRunning = false;
  }

  resumeMessageQueue() {
    isMessageQueueRunning = true;
    while (messageQueue.isNotEmpty) {
      var msg = messageQueue.removeAt(0);
      var cmd = msg.cmd;
      var op = msg.op;
      var body = msg.body;
      debug(
          '[DELAY HANDLE] $userId : $flag <- ${cmd.name}/${op.name}}: ${body.writeToJson()}');
      _handleCommand(cmd, op, body);
    }
  }
}
