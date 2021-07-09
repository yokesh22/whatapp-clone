import 'package:flutter/material.dart';
import 'package:whats_app/Homepage.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff075e54), accentColor: Color(0xff25d366)),
      home: Homepage(),
    );
  }
}
