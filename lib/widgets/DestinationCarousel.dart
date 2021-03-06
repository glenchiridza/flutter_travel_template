import 'package:flutter/material.dart';
import 'package:flutter_template/models/destination.dart';
import 'package:flutter_template/widgets/DestinationWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    itemCount: destination.length,
                    itemBuilder: (BuildContext context, int index){
                      
                      Destination destine = destination[index];

                      return GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder:(_) => DestinationWidget(
                                destine: destine
                                ),
                                 ),
                                 )
                        },
                        child: Container(
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
                                            '${destine.activities.length} activities',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2
                                            ),
                                            ),
                                          Text(
                                            destine.description,
                                          style: TextStyle(
                                            color: Colors.grey
                                            ),
                                            ),
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
                                     child: Stack(children: [
                                       Hero(
                                         tag: destine.imageUrl,
                                         child: ClipRRect(
                                           borderRadius: BorderRadius.circular(20.0),
                                           child: Image(height: 180.0, width: 180.0,
                                           image: AssetImage(destine.imageUrl),
                                           fit: BoxFit.cover,
                                           ),
                                         ),
                                       ),
                                       Positioned(
                                         left: 10.0,
                                         bottom: 10.0,
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                           Text(destine.city,
                                           style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 22.0,
                                             fontWeight: FontWeight.w700,
                                             letterSpacing: 1.2,
                                             )
                                             ,),
                                           Row(
                                             children: [
                                               Icon(
                                                 FontAwesomeIcons.locationArrow,
                                                 size: 10.0,
                                                 color: Colors.white,
                                                 ),

                                                 SizedBox(width: 5.0),

                                               Text(destine.country,
                                               style: TextStyle(
                                                 color: Colors.white,
                                               ),),
                                             ],
                                           ),
                                         ]),
                                       )
                                     ],
                                     )
                                    ,)
                            ],
                            )
                        ,),
                      );
                    },
                    ),)
              ]
            );
  }
}