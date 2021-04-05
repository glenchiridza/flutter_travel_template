import 'package:flutter_template/models/Activity.dart';

class Hotels {
    String imageUrl;
    String name;
    String address;

    Hotels({
      this.imageUrl,
      this.name,
      this.address
    });
}


List<Hotels> hotels = [
  Hotels(
    imageUrl: 'assets/images/1.jpg',
    name: "LivingStone",
    address: "11th street, Appleway ",
   
  ),
  Hotels(
    imageUrl: 'assets/images/2.jpg',
    name: "Matopos",
    address: "12th  Matopos lane ,"
  ),
  Hotels(
    imageUrl: 'assets/images/3.jpg',
    name: "Vic Falls Hotel",
    address: "13th el way Vic Falls,",
  ),
  Hotels(
    imageUrl: 'assets/images/4.jpg',
    name: "Great Zim Hotel",
    address: "14th B way Great Zim",
  ),
  Hotels(
    imageUrl: 'assets/images/5.jpg',
    name: "Zvimba Hotel",
    address: "17th L Way",
  ),
  Hotels(
    imageUrl: 'assets/images/6.jpg',
    name: "Dunken Hotel",
    address: "16th Z Way",
  ),
  Hotels(
    imageUrl: 'assets/images/7.jpg',
    name: "Chinhoyi Hotel",
    address: "19th C street",
  ),
  Hotels(
    imageUrl: 'assets/images/7.jpg',
    name: "Bulawayo Hotel",
    address: "22 BL Way",
    ),
];