import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/Setting_screen.dart';
import 'package:flutter_whatsapp/pages/create_chat_screen.dart';
import 'package:flutter_whatsapp/whatsapp_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WatsApp',
      theme: ThemeData(
        fontFamily: 'Vazir',

          primaryColor:new Color(0xff075e54),
        accentColor: new Color(0xff25d366)
      ),
      routes: {
        "/setting":(context)=>  SettingScreen(),
        "/new_chat":(context)=>  CreateChatScreen(),
      },
      home: new Directionality(
          textDirection: TextDirection.rtl, child: WhatsAppHome()),
    );
  }


}