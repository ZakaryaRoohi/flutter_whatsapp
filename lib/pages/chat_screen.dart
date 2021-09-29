import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/chat_model.dart';
import 'package:flutter_whatsapp/pages/single_chat_screen.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new ListView.builder(

        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          return new Column(
            children: [
              new Divider(
                height: 10,
              ),
              //تمام تاچ ها رو میگیره
              GestureDetector(
                onTap: () {
                _navigateAndDisplaySomeMessage(context , dummyData[index]);
                },
                child: new ListTile(
                  leading: new CircleAvatar(
                    backgroundImage:
                        new NetworkImage(dummyData[index].avatarUrl),
                    backgroundColor: Colors.grey,
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text(
                        dummyData[index].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        dummyData[index].time,
                        style: new TextStyle(color: Colors.grey, fontSize: 14),
                      )
                    ],
                  ),
                  subtitle: new Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: new Text(
                      dummyData[index].message,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
  _navigateAndDisplaySomeMessage(BuildContext context, ChatModel data) async{
    //await یعنی منتظر جوابش بمون
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                SingleChatScreen(data:data)));

    Scaffold.of(context).showSnackBar(new SnackBar(content: Text(result,style: TextStyle(fontFamily: 'Vazir'),)));
  }
}
