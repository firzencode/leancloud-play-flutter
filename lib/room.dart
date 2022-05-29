import 'package:fixnum/fixnum.dart';
import 'package:leancloud_play_flutter/client.dart';
import 'package:leancloud_play_flutter/code_utils.dart';
import 'package:leancloud_play_flutter/fsm.dart';
import 'package:leancloud_play_flutter/game_connection.dart';
import 'package:leancloud_play_flutter/logger.dart';
import 'package:leancloud_play_flutter/play_error.dart';
import 'package:leancloud_play_flutter/play_error_code.dart';
import 'package:leancloud_play_flutter/player.dart';
import 'package:leancloud_play_flutter/proto/messages.pb.dart';
import 'package:statemachine/statemachine.dart';

class Room {
  Client client;
  StateMachine fsm = StateMachine();
  GameConnection? gameConn;

  String? name;
  bool? open;
  bool? visible;
  int? maxPlayerCount;
  int? masterActorId;
  List<String>? expectedUserIds;
  Map<int, Player>? players;
  Player? player;
  Map<String, dynamic>? properties;

  Room(this.client) {
    fsm.newStartState('init');
    fsm.newStopState('closed');
    fsm.newState('joining');
    fsm.newState('game');
    fsm.newState('leaving');
    fsm.newState('disconnected');

    fsm.addStateTransition(name: 'join', from: ['init'], to: 'joining');
    fsm.addStateTransition(name: 'joined', from: ['joining'], to: 'game');
    fsm.addStateTransition(name: 'joinFailed', from: ['joining'], to: 'init');
    fsm.addStateTransition(name: 'leave', from: ['game'], to: 'leaving');
    fsm.addStateTransition(name: 'leaveFailed', from: ['leaving'], to: 'game');
    fsm.addStateTransition(
        name: 'disconnect', from: ['game'], to: 'disconnected');
    fsm.addStateTransition(
        name: 'close',
        from: ['init', 'joining', 'game', 'leaving', 'disconnected'],
        to: 'closed');
    fsm['game'].onEntry(() {});
    fsm['game'].onExit(() {});
    fsm.start();
    // fsm
    // State state;
  }

  Future<void> create({
    String? roomName,
    bool? open,
    bool? visible,
    int? emptyRoomTtl,
    int? playerTtl,
    int? maxPlayerCount,
    Map<String, dynamic>? customRoomProperties,
    List<String>? customRoomPropertyKeysForLobby,
    Int64? flag,
    String? pluginName,
    List<String>? expectedUserIds,
  }) async {
    fsm.callStateTransition('join');
    try {
      var lobbyService = client.lobbyService;
      var createRoomResp = await lobbyService.createRoom(roomName);
      var cid = createRoomResp['cid'];
      var addr = createRoomResp['addr'];
      var sessionToken = (await lobbyService.authorize())['sessionToken'];
      // 合并
      gameConn = GameConnection();
      await gameConn!.connect(
        appId: client.appId,
        server: addr,
        gameVersion: client.gameVersion,
        userId: client.userId,
        sessionToken: sessionToken,
      );

      var room = await gameConn!.createRoom(
        roomName: cid,
        open: open,
        visible: visible,
        emptyRoomTtl: emptyRoomTtl,
        playerTtl: playerTtl,
        maxPlayerCount: maxPlayerCount,
        customRoomProperties: customRoomProperties,
        customRoomPropertyKeysForLobby: customRoomPropertyKeysForLobby,
        flag: flag,
        pluginName: pluginName,
        expectedUserIds: expectedUserIds,
      );
      _init(room);
      fsm.callStateTransition('joined');
    } catch (e, st) {
      await close();
      rethrow;
    }
  }

  _init(RoomOptions roomData) {
    name = roomData.cid;
    open = roomData.open.value;
    visible = roomData.visible.value;
    maxPlayerCount = roomData.maxMembers;
    masterActorId = roomData.masterActorId;
    expectedUserIds = roomData.expectMembers;
    players = {};
    for (var member in roomData.members) {
      var player = Player(this);
      player.init(member);
      players![player.actorId] = player;
      if (player.userId == client.userId) {
        this.player = player;
      }
    }
    // 属性
    if (roomData.hasAttr()) {
      properties = deserializeObject(roomData.attr);
    } else {
      properties = {};
    }

    // this._name = roomData.getCid();
    // this._open = roomData.getOpen().getValue();
    // this._visible = roomData.getVisible().getValue();
    // this._maxPlayerCount = roomData.getMaxMembers();
    // this._masterActorId = roomData.getMasterActorId();
    // this._expectedUserIds = roomData.getExpectMembersList();
    // this._players = {};
    // roomData.getMembersList().forEach(member => {
    //   const player = new Player(this);
    //   player._init(member);
    //   this._players[player.actorId] = player;
    //   if (player._userId === this._client._userId) {
    //     this._player = player;
    //   }
    // });
    // // 属性
    // if (roomData.getAttr()) {
    //   this._properties = deserializeObject(roomData.getAttr());
    // } else {
    //   this._properties = {};
    // }
  }

  Future<void> close() async {
    if (!fsm.canCallStateTransition('close')) {
      throw PlayError(
          code: PlayErrorCode.STATE_ERROR,
          detail: 'Error state: ${fsm.current.toString()}');
    }
    if (gameConn != null) {
      await gameConn!.close();
    }
    client.room = null;
    fsm.callStateTransition('close');
  }
}
