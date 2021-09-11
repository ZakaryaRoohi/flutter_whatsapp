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
    tabController = new TabController(initialIndex:1,length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('واتساپ'),
        elevation: 5,
        bottom: new TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(
                text: "چت ها",),
              new Tab(
                text: "وضعیت",
              ),
              new Tab(
                text: "تماس ها",
              ),
            ]),
        actions: [
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 8)),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
          controller: tabController,
          children: <Widget>[
        new CameraScreen(),
        new ChatScreen(),
        new StatusScreen(),
        new CallScreen()
      ]),
    );
  }
}
