import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> animation;

  navigationToLogin() {
    // Navigator.pop(context);
    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    animation = Tween(begin: 0.0, end: 300.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeOutExpo));

    controller.forward();
    checkLogin();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget _animationBuilder(BuildContext context, Widget? child) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: animation.value,
      width: animation.value,
      child: Container(
        width: 325,
        height: 325,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/icons/whatsapp_icon.png"))),
      ),
    );
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
              AnimatedBuilder(
                  animation: controller, builder: _animationBuilder),
              Text(
                "واتساپ",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    ); //494300140041
  }

  checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? apiToken = prefs.getString('user.api_token');

    if (apiToken == null) navigationToLogin();
  }
}

// startTime() {
//   var _duration = const Duration(seconds: 5);
//   return Timer(_duration, navigationPageToLogin);
// }



// class SplashScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => SplashScreenState();
// }
//
// class SplashScreenState extends State<SplashScreen> {
//
//   startTime(){
//     var _duration = const Duration(seconds: 10);
//     return Timer(
//         _duration,
//         navigationPage
//     );
//   }
//   navigationPage(){
//     // Navigator.pop(context);
//     Navigator.of(context).pushReplacementNamed('/login');
//
//   }
//
//   @override
//   void initState() {
//
//     super.initState();
//     startTime();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff075e54),
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: 125,
//                 height: 125,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("assets/icons/whatsapp_icon.png"))),
//               ),
//               Text(
//                 "واتساپ",
//                 style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold),
//               )
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 30),
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: CircularProgressIndicator(color: Colors.white,),
//             ),
//           )
//         ],
//       ),
//     );//494300140041
//   }
// }
