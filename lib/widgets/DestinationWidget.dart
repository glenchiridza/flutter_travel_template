import 'package:flutter/material.dart';
import 'package:flutter_template/models/Activity.dart';
import 'package:flutter_template/models/destination.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Column(
        children: [
          Stack(
            children: [

              Container(
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: [BoxShadow(
                color: Colors.black26,
                 offset: Offset(0.0,2.0), 
                 blurRadius: 6.0
                 )
                 ],

            ),
            
            child: Hero(
              tag: widget.destine.imageUrl,
                          child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                            child: Image(image: AssetImage(widget.destine.imageUrl),
                fit: BoxFit.cover,
                ),
              ),
            ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 25.0,
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context),
                  ),
                  Row(children: [
                    IconButton(
                      icon: Icon(Icons.search),
                      color: Colors.black,
                      iconSize: 25.0,
                      onPressed: () => Navigator.pop(context),
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.sortAmountDown,),
                        iconSize: 25.0,
                        color: Colors.black,
                        onPressed: () => Navigator.pop(context),
                        )

                  ],)
              ],),
            ),
             Positioned(
               left: 20.0,
               bottom: 20.0,
                            child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                             Text(widget.destine.city,
                                             style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 29.0,
                                               fontWeight: FontWeight.w700,
                                               letterSpacing: 1.2,
                                               )
                                               ,),
                                             Row(
                                               children: [
                                                 Icon(
                                                   FontAwesomeIcons.locationArrow,
                                                   size: 15.0,
                                                   color: Colors.white,
                                                   ),

                                                   SizedBox(width: 5.0),

                                                 Text(widget.destine.country,
                                                 style: TextStyle(
                                                   color: Colors.white70,
                                                   fontSize: 20.0
                                                 ),),
                                               ],
                                             ),
                                           ]),
             ),

             Positioned(
               right: 20.0,
               bottom: 20.0,

               child: Icon(
                 Icons.location_on,
                 color: Colors.white70,
                 size: 25.0,
                 ),
               )

            ]
          ),

          Expanded(
                      child: ListView.builder(
              itemCount: widget.destine.activities.length,
              itemBuilder: (BuildContext context, int index){
                Activity activity = widget.destine.activities[index];
                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0,5.0),
                      height: 165.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: [
                        Row(
                          children: [
                          Text(activity.name),
                          Text('\$ ${activity.price}'),
                          
                        ],
                        ),
                        ],

                      ),
                    ),
                  ],
                );
              }),
          )
        ]
      )
    );
  }
}