import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WhatsAppHomeState();
}

class WhatsAppHomeState extends State<WhatsAppHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
      title: new Text('واتساپ'),
      elevation: 5,
      actions: [
        new Icon(Icons.search),
        new Padding(padding: const EdgeInsets.symmetric(horizontal: 8)),
        new Icon(Icons.more_vert)
      ],
    ));
  }
}
