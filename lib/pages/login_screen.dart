import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/animations/signin_animation.dart';
import 'package:flutter_whatsapp/components/Form.dart';
import 'package:flutter_whatsapp/models/chat_model.dart';
import 'package:flutter_whatsapp/pages/camera_screen.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

//this steps show ho to add animation to login button code is "loginButton'
// "loginButton 1) convert loginScreen class to StateFulWidget
class LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  // "loginButton 2) define an Animation Controller
  late AnimationController _loginButtonController;

  late final _formKey = GlobalKey<FormState>();
  late String _emailValue;
  late String _passwordValue;

 emailOnSaved(String? value) {
    _emailValue = value!;
  }

  passwordOnSaved(String? value) {
    _passwordValue = value!;
  }

  @override
  void initState() {
    super.initState();
    // "loginButton 3) initial Animation Controller should use  " with SingleTickerProviderStateMixin"
    _loginButtonController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
  }

  @override
  void dispose() {
    // "loginButton 4) dispose animation Controller in dispose method
    _loginButtonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 0.4;
    var page = MediaQuery.of(context).size;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
          const Color(0xff2c5364),
          const Color(0xff0f2027),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Opacity(
              opacity: 0.1,
              child: Container(
                width: page.width,
                height: page.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/background_login.jpg"),
                        repeat: ImageRepeat.repeat)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormContainer(
                    formKey: _formKey,
                    emailOnSaved: emailOnSaved,
                    passwordOnSaved: passwordOnSaved,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "ایجاد حساب کاربری؟",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontSize: 14),
                    ))
              ],
            ),
            // "loginButton 5) cut the peace of code that show button and create a new class to add it to that class use tween
            GestureDetector(
              // "loginButton 13) use GestureDetector to use on Tap on the button
              onTap: () async {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();


                  // ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
                  //   content: Text(_emailValue + _passwordValue),
                  //   leading: const Icon(Icons.info),
                  //   backgroundColor: Colors.yellow,
                  //   actions: [
                  //     TextButton(
                  //       child: const Text('Dismiss'),
                  //       onPressed: () =>
                  //           ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
                  //     ),
                  //   ],
                  // ));

                  await _loginButtonController.forward();
                  await _loginButtonController.reverse();

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        _emailValue + _passwordValue,
                        style: TextStyle(fontFamily: 'Vazir'),
                      )));
                }
              },
              child:
                  new SignInAnimation(controller: _loginButtonController.view),
            ),
          ],
        ),
      ),
    );
  }
}
