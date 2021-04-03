import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeWidget extends StatefulWidget {

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

int _activeIndex = 0;
List<IconData> _icons = [
  FontAwesomeIcons.plane,
  FontAwesomeIcons.bed,
  FontAwesomeIcons.walking,
  FontAwesomeIcons.biking
];

Widget _buildIcon(int i){

  return GestureDetector(
    onTap: () {
      setState(() {
        _activeIndex = i;
      });
    },
      child: Container(height: 60.0,
    width: 60.0,
    decoration: BoxDecoration(
      color: _activeIndex == i
       ? Theme.of(context).accentColor
       :Color(0xFFE7EBEE),
      borderRadius: BorderRadius.circular(30.0)
      
      ),
      child: Icon(_icons[i], size: 25.0,
      color:_activeIndex == i
       ? Theme.of(context).primaryColor
       :Color(0xFFB4C1C4),
      ),

    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical:20.0),
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20.0,right:120.0),
              child: Text("What are you looking for?",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700),),
            ),
            SizedBox(height:20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
              .asMap()
              .entries
              .map(
                (MapEntry map) => _buildIcon(map.key),
                ).toList(),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Text('Destinations', style: TextStyle(
                    fontSize: 22.0,
                     fontWeight:FontWeight.bold,
                     letterSpacing: 1.5,
                     ),
                     ),
                  Text('View All',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0),)
                    ],
            ),
                ),
              ]
            )
          ],
          ),
          ),
    );
  }
}