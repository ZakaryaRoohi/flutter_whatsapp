import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/chat_model.dart';
import 'package:flutter_whatsapp/pages/camera_screen.dart';

class SingleChatScreen extends StatelessWidget {
  final ChatModel data;

  SingleChatScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075e54),
            //باتن  بک رو غیر فعال میکنه
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                GestureDetector(
                  child: Icon(Icons.arrow_back),
                  onTap: () => Navigator.pop(context),
                ),
                //فاصله بین بچه هاش رو 10گذاشتیم
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage:
                  new NetworkImage(this.data.avatarUrl),
                  backgroundColor: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  this.data.name,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          body: new Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this.data.message,
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CameraScreen()));
                        },
                        child: Text('صفحه دوم')),
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
