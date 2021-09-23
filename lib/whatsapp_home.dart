import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/call_screen.dart';
import 'package:flutter_whatsapp/pages/camera_screen.dart';
import 'package:flutter_whatsapp/pages/chat_screen.dart';
import 'package:flutter_whatsapp/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WhatsAppHomeState();
}

class WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: new Color(0xff075e54),
        title: new Text('واتساپ'),
        elevation: 5,
        bottom: new TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(
                text: "چت ها",
              ),
              new Tab(
                text: "وضعیت",
              ),
              new Tab(
                text: "تماس ها",
              ),
            ]),
        actions: [
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
          new PopupMenuButton<String>(onSelected: (String choice) {
            print(choice);
          }, itemBuilder: (BuildContext context) {
            return [
              new PopupMenuItem(
                  value: "new_group",
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      children: [
                        Text("گروه جدید", textDirection: TextDirection.rtl)
                      ],
                    ),
                  )),
              new PopupMenuItem(
                value: 'setting',
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      Text('تنظیمات', textDirection: TextDirection.rtl)
                    ],
                  ),
                ),
              )
            ];
          })
        ],
      ),
      body: new TabBarView(controller: tabController, children: <Widget>[
        new CameraScreen(),
        new ChatScreen(),
        new StatusScreen(),
        new CallScreen()
      ]),
      floatingActionButton: new FloatingActionButton(
          // backgroundColor: new Color(0xff25d366),
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {
            print('open Chat!');
          }),
    );
  }
}
