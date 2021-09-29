import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/Setting_screen.dart';
import 'package:flutter_whatsapp/pages/call_screen.dart';
import 'package:flutter_whatsapp/pages/camera_screen.dart';
import 'package:flutter_whatsapp/pages/chat_screen.dart';
import 'package:flutter_whatsapp/pages/create_chat_screen.dart';
import 'package:flutter_whatsapp/pages/new_group_screen.dart';
import 'package:flutter_whatsapp/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WhatsAppHomeState();
}

class WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  late Map<String, SliverAppBar> appBarList;
  String _currentAppBar = 'mainAppBar';

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 1, length: 4, vsync: this);
    //اپ بار اصلی برنامه
    SliverAppBar mainAppBar = SliverAppBar(
      backgroundColor: Color(0xff075e54),
      title: Text('واتساپ'),
      pinned: true,
      floating: true,
      elevation: 5,
      bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: new Icon(Icons.camera_alt)),
            Tab(
              text: "چت ها",
            ),
            Tab(
              text: "وضعیت",
            ),
            Tab(
              text: "تماس ها",
            ),
          ]),
      actions: [
        GestureDetector(
          child: Icon(Icons.search),
          onTap: () {
            setState(() {
              //این متد دوباره ریرندر میکنه و نتیجه رو تغییر میده
              //اپ بار رو تغییر میده
              _currentAppBar = 'searchAppBar';
            });
          },
        ),
        new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
        new PopupMenuButton<String>(onSelected: (String choice) {
          if (choice == 'setting') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingScreen()));
          } else if (choice == 'new_group') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NewGroupScreen()));
          }
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
                  children: [Text('تنظیمات', textDirection: TextDirection.rtl)],
                ),
              ),
            )
          ];
        })
      ],
    );
    //اپ بار در صورتی که ایکون سرچ کلیک شود این اپ بار نمایش داده خواهد شد
    SliverAppBar searchAppBar = SliverAppBar(
      backgroundColor: Colors.white,
      title: TextField(
        decoration:
            InputDecoration(border: InputBorder.none, hintText: 'جستجو ...'),
      ),
      pinned: true,
      floating: true,
      elevation: 5,
      //برای دادن پدینگ بین تکست فیلد و ایکون استفاده کردیم
      leading: new GestureDetector(
        child: Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Icon(Icons.arrow_back, color: Color(0xff075e54)),
        ),
        onTap: () {
          //این متد دوباره ریرندر میکنه و نتیجه رو تغییر میده
          setState(() {
            _currentAppBar = 'mainAppBar';
          });
        },
      ),
    );

    appBarList = <String, SliverAppBar>{
      'mainAppBar': mainAppBar,
      'searchAppBar': searchAppBar
    };
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              //برای دادن sliverAppBar به Widget باید از این متد استفاده کرد
              SliverOverlapAbsorber(
                sliver: appBarList[_currentAppBar],
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              )
            ];
          },
          body: _currentAppBar == 'mainAppBar'
              ? new TabBarView(controller: tabController, children: <Widget>[
                  new CameraScreen(),
                  new ChatScreen(),
                  new StatusScreen(),
                  new CallScreen()
                ])
              : new Center(
                  child: Text('Search'),
                )),
      floatingActionButton: new FloatingActionButton(
          // backgroundColor: new Color(0xff25d366),
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateChatScreen()));
          }),
    );
  }
}
