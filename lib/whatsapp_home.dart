import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WhatsAppHomeState();
}

class WhatsAppHomeState extends State<WhatsAppHome>  with SingleTickerProviderStateMixin{

  late TabController tabController ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
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
            new Tab( text: "چت ها",),
            new Tab( text: "وضعیت",),
            new Tab( text: "تماس ها",),
          ]
      ),
      actions: [
        new Icon(Icons.search),
        new Padding(padding: const EdgeInsets.symmetric(horizontal: 8)),
        new Icon(Icons.more_vert)
      ],
    ));
  }
}
