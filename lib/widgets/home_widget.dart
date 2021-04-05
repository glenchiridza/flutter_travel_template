import 'package:flutter/material.dart';
import 'package:flutter_template/widgets/DestinationCarousel.dart';
import 'package:flutter_template/widgets/HotelCarousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeWidget extends StatefulWidget {

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

int _activeIndex = 0;
int _currentTab = 0;
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
            SizedBox(height:20.0),
            DestinationCarousel(),
            SizedBox(height:20.0),
            HotelCarousel(),
          ],
          ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentTab,
            onTap: (int index){
              setState(() {
                _currentTab = index;
              });
            },
            items: [
              BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                 size: 25.0,),
                 title: SizedBox.shrink()
                ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                 size: 25.0,),
                 title: SizedBox.shrink()
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_pizza,
                 size: 25.0,),
                 title: SizedBox.shrink()
            ),

            ],
            ),
    );
  }
}