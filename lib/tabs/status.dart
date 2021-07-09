import 'package:flutter/material.dart';
import 'package:whats_app/Modals/status_Model.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50,
                  child: Stack(
                    children: <Widget>[
                      ClipOval(
                        child: Image.network(
                          'https://i.pinimg.com/originals/f4/26/37/f42637ee4285c852315783ffb060d015.jpg',
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                title: Text(
                  'My status',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Tap to add status update',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 30.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            width: double.infinity,
            color: Colors.grey[200],
            child: Text(
              'Recent updates',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: statusData.length,
              itemBuilder: (context, i) => new Column(
                    children: <Widget>[
                      Divider(
                        height: 0.1,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(statusData[i].pic),
                        ),
                        title: Text(
                          statusData[i].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          statusData[i].msg,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  )),
        )
      ],
    );
  }
}
