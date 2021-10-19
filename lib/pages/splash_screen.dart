import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/services/auth-services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity/connectivity.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> animation;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  navigationToLogin() {
    // Navigator.pop(context);
    Navigator.of(context).pushReplacementNamed('/login');
  }

  navigationToHome() {
    // Navigator.pop(context);
    Navigator.of(context).pushReplacementNamed('/home');
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
      key: _scaffoldKey,
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

    // if (apiToken == null) {
    //   navigationToLogin();
    // }

    // چک میکنم ببینم یوزر وجود داره یا نه
    // if (await checkInternetConnection()) {
    //   await AuthService.checkApiToken(apiToken!)
    //       ? navigationToHome()
    //       : navigationToLogin();
    // }

    // I have no Api so just chek the api token exist or not
    if (await checkInternetConnection()) {
      apiToken == null
      ? navigationToLogin()
      :navigationToHome();


    }
  }

  Future<bool> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    print(connectivityResult);
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi)
      return true;
    else {
      /*
      _scaffoldKey.currentState!.showSnackBar(SnackBar(
          duration: Duration(minutes: 1),
          content: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.hideCurrentSnackBar();
              checkLogin();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ارتباط با اینترنت برقرار نیست. ارتباط خود را چک کنید!',
                    style: TextStyle(fontFamily: 'Vazir')),
                Icon(
                  Icons.wifi_lock,
                  color: Colors.white,
                )
              ],
            ),
          )
      ));

       */

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(hours: 1),
          content: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.hideCurrentSnackBar();
              checkLogin();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'ارتباط با اینترنت برقرار نیست. لطفا ارتباط خود را بررسی کنید!',
                    style: TextStyle(fontFamily: 'Vazir', fontSize: 12)),
                Icon(
                  Icons.refresh,
                  color: Colors.white,
                )
              ],
            ),
          )));

      return false;
    }
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
