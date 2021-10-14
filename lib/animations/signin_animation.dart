import 'package:flutter/material.dart';


// "loginButton 6) create SignInAnimation Class
class SignInAnimation extends StatelessWidget {
  // "loginButton 7) define an Animation<double>
  late final Animation<double> controller;
// "loginButton 9)
  late final Animation<double> buttonSqueezedAnimation;
  late final Animation<double> buttonZoomOut;
// "loginButton 8) add controller to the class Constructor
  SignInAnimation({required this.controller})
  // "loginButton 10) initial properties
      : buttonSqueezedAnimation = Tween(begin: 280.0, end: 60.0).animate(
            CurvedAnimation(parent: controller, curve: Interval(0.0, 0.150))),
        buttonZoomOut = Tween(begin: 70.0, end: 1000.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.550, 0.999, curve: Curves.bounceOut)));

  Widget _animationBuilder(BuildContext context, Widget? child) {
    // "loginButton 12) the animation shows in different condition and make the view
    return buttonZoomOut.value <= 300
        ? Container(
            margin: const EdgeInsets.only(bottom: 30),
            width: buttonZoomOut.value == 70
                ? buttonSqueezedAnimation.value
                : buttonZoomOut.value,
            height: buttonZoomOut.value == 70 ? 60 : buttonZoomOut.value,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xff075e54),
                borderRadius: buttonZoomOut.value < 400
                    ? BorderRadius.all(const Radius.circular(30))
                    : BorderRadius.all(const Radius.circular(0))),
            child: buttonSqueezedAnimation.value > 75
                ? Text(
                    "ورود",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.3),
                  )
                : buttonZoomOut.value < 300.0
                    ? CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white),)
                    : null
                ,
          )
        : Container(
            width: buttonZoomOut.value,
            height: buttonZoomOut.value,
            decoration: BoxDecoration(
                shape: buttonZoomOut.value < 500
                    ? BoxShape.circle
                    : BoxShape.rectangle,
                color: const Color(0xff075E54)),
          );
  }

  @override
  Widget build(BuildContext context) {
    // "loginButton 11) return animatedBuilder that have a controller and builder
    return AnimatedBuilder(animation: controller, builder: _animationBuilder);
  }
}
