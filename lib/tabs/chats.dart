import 'package:flutter/material.dart';
import 'package:whats_app/Modals/chat_model.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                Divider(
                  height: 8,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(chatData[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chatData[i].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                      Text(
                        chatData[i].time,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Text(
                        chatData[i].msg,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ],
            ));
  }
}
