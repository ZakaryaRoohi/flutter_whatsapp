import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/camera_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>

}

class SplashScreenState extends State<SplashScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff075e54),
      body: Stack(
     children: [
       Column(
         children: [
           Container(
             width: 125,height:125,decoration: BoxDecoration(),
           )
         ],
       )
     ],
      ),
    );
  }

}
