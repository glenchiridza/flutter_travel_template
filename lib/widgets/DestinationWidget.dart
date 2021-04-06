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
  

  _buildRatingStars(int rating) {
    // String  stars = '';
    for (int i = 0; i < rating; i++){
      // stars += '';
    return Icon(Icons.star);

    }
  }
  
  
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
                        padding: EdgeInsets.only(top:10.0),
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
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(100.0,20.0,20.0,20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Container(
                              width: 120.0,
                              child: Text(activity.name,
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                ),
                            ),
                            Column(
                              children: [
                                Text('\$ ${activity.price}',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600
                                  ), ),
                                  Text(
                                    'per room',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                              ],
                            ),

                          ],
                          ),
                          Text(
                            activity.type,
                          style: TextStyle(
                              color: Colors.grey,
                              ),
                            ),
                            _buildRatingStars(activity.rating),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(children: [
                              Container(
                                width: 70.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                alignment: Alignment.center,
                                child: Text(activity.startTime[0]),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                width: 70.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                alignment: Alignment.center,
                                child: Text(activity.startTime[1]),
                              ),
                        
                            ],)
                          ],

                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      top: 15.0,
                      bottom: 15.0,
                                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          width: 110.0,
                          image: AssetImage(
                            activity.imageUrl,

                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                );
              }),
          )
        ]
      )
    );
  }
}