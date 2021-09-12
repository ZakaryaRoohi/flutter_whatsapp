import 'package:flutter/material.dart';
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
      home: new Directionality(
          textDirection: TextDirection.rtl, child: WhatsAppHome()),
    );
  }


}