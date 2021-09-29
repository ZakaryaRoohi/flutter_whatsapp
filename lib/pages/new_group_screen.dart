import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/camera_screen.dart';

class NewGroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('گروه جدید'),
          ),
          body: new Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'گروه جدید',
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // TextButton(
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (context) => CameraScreen()));
                    //     },
                    //     child: Text('صفحه دوم')),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('برگشت')),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
