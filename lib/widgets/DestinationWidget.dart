import 'package:flutter/material.dart';
import 'package:flutter_template/models/destination.dart';

class DestinationWidget extends StatefulWidget {
  
  final Destination destine;

  DestinationWidget({this.destine});
  
  @override
  _DestinationWidgetState createState() => _DestinationWidgetState();
}

class _DestinationWidgetState extends State<DestinationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //now at 24:00
    );
  }
}