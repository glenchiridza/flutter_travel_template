import 'package:flutter/material.dart';
import 'package:flutter_template/models/Hotels.dart';
import 'package:flutter_template/models/destination.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Text('Hotels', style: TextStyle(
                    fontSize: 22.0,
                     fontWeight:FontWeight.bold,
                     letterSpacing: 1.5,
                     ),
                     ),
                  GestureDetector(
                    onTap: () =>{},
                    child: Text('View All',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),),
                  ),
                    ],
            ),
                ),
                Container(
                  height: 300.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotels.length,
                    itemBuilder: (BuildContext context, int index){
                      
                      Hotels hotel = hotels[index];

                      return Container(
                        margin: EdgeInsets.all(10.0),
                        width: 210.0,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned(
                              bottom: 15.0,
                                                       
                                child: Container(
                                height: 120.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          hotel.name,
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2
                                          ),
                                          ),
                                          SizedBox(height: 3.0,),
                                        Text(
                                          hotel.address,
                                        style: TextStyle(
                                          color: Colors.grey
                                          ),
                                          ),
                                          SizedBox(height: 3.0,),
                                          Text('\$200',
                                          style: TextStyle(
                                            fontSize:18.0,
                                            fontWeight: FontWeight.w600 ),)
                                      ]
                                    ),
                                  ),
                                ),
                            ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [BoxShadow(
                                    color: Colors.black26, 
                                    offset: Offset(0.0,2.0),
                                    blurRadius: 6.0)],
                                   ),
                                   
                                     child: ClipRRect(
                                       borderRadius: BorderRadius.circular(20.0),
                                       child: Image(height: 180.0, width: 180.0,
                                       image: AssetImage(hotel.imageUrl),
                                       fit: BoxFit.cover,
                                       ),
                                     ),
                                   
                                  )
                          ],
                          )
                      ,);
                    },
                    ),)
              ]
            );
  }
}