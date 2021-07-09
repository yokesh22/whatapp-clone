import 'package:flutter/material.dart';
import 'package:whats_app/tabs/call.dart';
import 'package:whats_app/tabs/camera.dart';
import 'package:whats_app/tabs/chats.dart';
import 'package:whats_app/tabs/status.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('whatsApp'),
        actions: <Widget>[
          Icon(Icons.search, color: Colors.white),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALL',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[new Camera(), new Chats(), new Status(), new Call()],
      ),
      floatingActionButton: _tabController.index == 0
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
              ),
            )
          : _tabController.index == 1
              ? FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                )
              : _tabController.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          width: 45,
                          height: 45,
                          child: FloatingActionButton(
                            backgroundColor: Colors.white,
                            onPressed: () {},
                            child: Icon(
                              Icons.edit,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  : FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.add_call,
                        color: Colors.white,
                      ),
                    ),
    );
  }
}
