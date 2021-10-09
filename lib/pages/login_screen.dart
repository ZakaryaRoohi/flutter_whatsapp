import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/components/Form.dart';
import 'package:flutter_whatsapp/models/chat_model.dart';
import 'package:flutter_whatsapp/pages/camera_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                FormContainer(),
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
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              width: 230,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff075e54),
                borderRadius: BorderRadius.all(const Radius.circular(30))
              ),
              child: Text("ورود", style: TextStyle(
                color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300, letterSpacing: 0.3
              ),),
            )
          ],
        ),
      ),
    );
  }
}
