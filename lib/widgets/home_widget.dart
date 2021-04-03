import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Text("What are you looking for?",
            style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700),)
          ],
          ),
          ),
    );
  }
}