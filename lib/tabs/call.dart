import 'package:flutter/material.dart';
import 'package:whats_app/Modals/call_Model.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callData.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                Divider(
                  height: 8,
                ),
                ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(callData[i].pic),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(callData[i].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0)),
                        Icon(
                          Icons.call,
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Icon(
                          i % 2 != 0
                              ? (Icons.call_made_sharp)
                              : Icons.call_received_sharp,
                          color: Colors.green,
                        ),
                        Text(callData[i].msg)
                      ],
                    ))
              ],
            ));
  }
}
