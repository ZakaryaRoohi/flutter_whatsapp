import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/camera_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  startTime(){
    var _duration = new Duration(seconds: 5);
    return Timer(
        -_duration,
        navigationPage
    );
  }
  navigationPage(){
    // Navigator.pop(context);
    Navigator.of(context).pushNamed('/');

  }

  @override
  void initState() {

    super.initState();
    startTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff075e54),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/whatsapp_icon.png"))),
              ),
              Text(
                "واتساپ",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(color: Colors.white,),
            ),
          )
        ],
      ),
    );//494300140041
  }
}
