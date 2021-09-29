import 'package:flutter/material.dart';

class CreateChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Directionality(textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar:  AppBar(
            title: Text('ایجاد چت'),
          ),
          body: new Center(
            child: Text('ایجاد چت',style: TextStyle(fontSize: 20),),
          ),
        ));
  }
}
