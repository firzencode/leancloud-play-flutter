import 'dart:math';

import 'package:flutter/material.dart';
import 'package:leancloud_play_flutter/client.dart';
import 'package:leancloud_play_flutter/event.dart';
import 'package:leancloud_play_flutter/receiver_group.dart';
import 'package:leancloud_play_flutter_example/secret.dart';

// 自定义事件 ID
const EVENT_CUSTOM_1 = 1;

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'leancloud-play-flutter-example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ApiExample(title: 'leancloud-play-flutter-example'),
    );
  }
}

class ApiExample extends StatefulWidget {
  const ApiExample({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ApiExample> createState() => _ApiExampleState();
}

class _ApiExampleState extends State<ApiExample> {
  Client client = Client(
    userId: 'player01',
    appId: getAppId(),
    appKey: getAppKey(),
    playServer: getServer(),
  );
  Client client2 = Client(
    userId: 'player02',
    appId: getAppId(),
    appKey: getAppKey(),
    playServer: getServer(),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Text('横向滚动查看更多选项'),
            const SizedBox(
              height: 10,
            ),
            ClientWidget(client, "client 1"),
            ClientWidget(client2, "client 2"),
            // InfoArea(client),
            // InfoArea(client2),
          ],
        ),
      ),
    );
  }
}

class ClientWidget extends StatefulWidget {
  final Client client;
  final String title;

  const ClientWidget(this.client, this.title, {Key? key}) : super(key: key);

  @override
  State<ClientWidget> createState() => _ClientWidgetState();
}

class _ClientWidgetState extends State<ClientWidget> {
  List<String> logs = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Event 只有部分事件会从 client 中发出！

    widget.client.on(Event.PLAYER_ROOM_JOINED, context, (ev, context) {
      var data = ev.eventData as EventDataPlayerRoomJoined;
      msg('新玩家加入房间，actorId: ${data.newPlayer.actorId} userId: ${data.newPlayer.userId}');
    });

    widget.client.on(Event.PLAYER_ROOM_LEFT, context, (ev, context) {
      var data = ev.eventData as EventDataPlayerRoomLeft;
      msg('玩家退出了房间，actorId: ${data.leftPlayer.actorId} userId: ${data.leftPlayer.userId}');
    });

    widget.client.on(Event.PLAYER_CUSTOM_PROPERTIES_CHANGED, context,
        (ev, context) {
      var data = ev.eventData as EventDataPlayerCustomPropertiesChanged;
      msg('玩家 ${data.actorId} 属性发生了变化: ${data.changedProps.toString()}');
    });

    widget.client.on(Event.ROOM_CUSTOM_PROPERTIES_CHANGED, context,
        (ev, context) {
      var data = ev.eventData as EventDataRoomCustomPropertiesChanged;
      msg('房间属性发生了变化: ${data.changedProps.toString()}');
    });

    widget.client.on(Event.CUSTOM_EVENT, context, (ev, context) {
      var data = ev.eventData as EventDataCustomEvent;
      msg('收到了自定义消息 ${data.eventId} : ${data.eventData.toString()}');
    });

    widget.client.on(Event.LOBBY_ROOM_LIST_UPDATED, context, (ev, context) {
      // var data = ev.eventData as EventDataROOM
      var roomList = widget.client.lobbyRoomList;
      msg('大厅房间更新: ${roomList.map((e) => e.roomName).toList().toString()}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Text(widget.title),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      await widget.client.connect();
                      msg('已连接');
                    } catch (e) {
                      msg(e.toString());
                    }
                  },
                  child: const Text('连接'),
                ),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      var room =
                          await widget.client.createRoom(roomName: 'room1');
                      msg('房间已建立，房间名: ${room.name}');
                    } catch (e) {
                      msg(e.toString());
                    }
                  },
                  child: const Text('建立房间'),
                ),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      var room = await widget.client.createRoom(
                          roomName:
                              'room-lobby-${Random().nextInt(1000).toString()}',
                          customRoomPropertyKeysForLobby: [
                            Random().nextInt(1000).toString()
                          ]);
                      msg('房间已建立，房间名: ${room.name}');
                    } catch (e) {
                      msg(e.toString());
                    }
                  },
                  child: const Text('建立大厅房间'),
                ),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      var room =
                          await widget.client.joinRoom(roomName: 'room1');
                      msg("已加入房间，房间名: ${room.name}");
                    } catch (e) {
                      msg(e.toString());
                    }
                  },
                  child: const Text('加入房间'),
                ),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      await widget.client.leaveRoom();
                      msg("已退出房间");
                    } catch (e) {
                      msg(e.toString());
                    }
                  },
                  child: const Text('退出房间'),
                ),
                OutlinedButton(
                    onPressed: () async {
                      try {
                        await widget.client.joinLobby();
                        msg('已加入大厅');
                      } catch (e, ts) {
                        msg(e.toString());
                        print(ts);
                        await widget.client.close();
                      }
                    },
                    child: const Text('加入大厅')),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      await widget.client.leaveLobby();
                      msg('已退出大厅');
                    } catch (e, ts) {
                      msg(e.toString());
                      print(ts);
                    }
                  },
                  child: const Text('退出大厅'),
                ),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      var roomList = widget.client.lobbyRoomList;
                      msg('大厅房间读取: ${roomList.map((e) => e.roomName).toList().toString()}');
                    } catch (e, ts) {
                      msg(e.toString());
                      print(ts);
                    }
                  },
                  child: const Text('显示大厅房间'),
                ),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      await widget.client.player!
                          .setCustomProperties({'hp': Random().nextInt(100)});
                      // msg(widget.client.player!.customProperties.toString());
                    } catch (e, ts) {
                      msg(e.toString());
                      print(ts);
                    }
                  },
                  child: const Text('修改玩家自定义属性'),
                ),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      await widget.client.room!.setCustomProperties(
                          properties: {'flag': Random().nextInt(100)});
                    } catch (e, ts) {
                      msg(e.toString());
                      print(ts);
                    }
                  },
                  child: const Text('修改房间自定义属性'),
                ),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      await widget.client.sendEvent(
                        eventId: EVENT_CUSTOM_1,
                        eventData: {"content": "haha"},
                        receiveGroup: ReceiveGroup.all,
                      );
                    } catch (e, ts) {
                      msg(e.toString());
                      print(ts);
                    }
                  },
                  child: const Text(
                    '发送自定义事件给所有人',
                  ),
                ),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      await widget.client.sendEvent(
                        eventId: EVENT_CUSTOM_1,
                        eventData: {"rndNum": Random().nextInt(100)},
                        receiveGroup: ReceiveGroup.others,
                      );
                    } catch (e, ts) {
                      msg(e.toString());
                      print(ts);
                    }
                  },
                  child: const Text(
                    '发送自定义事件给其他人',
                  ),
                ),
                OutlinedButton(
                  onPressed: () async {
                    try {
                      await widget.client.sendEvent(
                        eventId: EVENT_CUSTOM_1,
                        eventData: {"rndNum": Random().nextInt(100)},
                        receiveGroup: ReceiveGroup.masterClient,
                      );
                    } catch (e, ts) {
                      msg(e.toString());
                      print(ts);
                    }
                  },
                  child: const Text(
                    '发送自定义事件给主机',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
                color: const Color(0xffdddddd),
                height: 200,
                child: ListView.builder(
                    controller: _scrollController,
                    itemCount: logs.length,
                    itemBuilder: (context, index) {
                      return Text(logs[index]);
                    })),
          ),
        ],
      ),
    );
  }

  void msg(String msg) {
    setState(() {
      logs.add(msg);
    });
    Future.delayed(const Duration(milliseconds: 500), () {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }
}
