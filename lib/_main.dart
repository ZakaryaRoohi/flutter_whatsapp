import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/Setting_screen.dart';
import 'package:flutter_whatsapp/pages/create_chat_screen.dart';
import 'package:flutter_whatsapp/pages/splash_screen.dart';
import 'package:flutter_whatsapp/whatsapp_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(fontFamily: 'Vazir');
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WatsApp',
      // theme: ThemeData(
      //   fontFamily: 'Vazir',
      //
      //     primaryColor:new Color(0xff075e54),
      //   accentColor: new Color(0xff25d366),
      //
      // ),
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
              primary: Color(0xff075e54), secondary: Color(0xff25d366))),
      //اولین صفحه ای که بالا میاد
      initialRoute: "/splash_screen",
      routes: {
        //این همون home خودمون فرقی نداره
        "/": (context) => Directionality(
            textDirection: TextDirection.rtl, child: WhatsAppHome()),
        "/splash_screen": (context) => new Directionality(
            textDirection: TextDirection.rtl, child: SplashScreen()),
        "/setting": (context) => SettingScreen(),
        "/new_chat": (context) => CreateChatScreen(),
      },
      // home:Directionality(textDirection: TextDirection.rtl, child: WhatsAppHome()) ,
    );
  }
}
