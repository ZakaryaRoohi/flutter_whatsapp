import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/Setting_screen.dart';
import 'package:flutter_whatsapp/pages/create_chat_screen.dart';
import 'package:flutter_whatsapp/pages/splash_screen.dart';
import 'package:flutter_whatsapp/whatsapp_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();


}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {

  late AnimationController controller;

  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(microseconds: 2000));
    animation = Tween(begin: 0.0, end: 300.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeIn));


    controller.addListener(() {
      if(controller.isCompleted){
        controller.reverse();
      }else if(controller.isDismissed){
        controller.forward();
      }
    })
  }


//Animation
  //Animation Controller
  //Tween
  //Animation Builder


  Widget _animationBuilder(BuildContext context, Widget child) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: animation.value,
      width: animation.value,
      child: FlutterLogo(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(fontFamily: 'Vazir');
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WatsApp',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                  animation: controller, builder: _animationBuilder),
              ElevatedButton(onPressed: () {
                controller.forward();
              }, child: Text('Run'))
            ],
          ),
        ),
      ),
      // home:Directionality(textDirection: TextDirection.rtl, child: WhatsAppHome()) ,
    );
  }

}
