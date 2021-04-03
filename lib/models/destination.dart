import 'package:flutter_template/models/Activity.dart';

class Destination {
    String imageUrl;
    String city;
    String country;
    String description;
    List<Activity> activities;

    Destination({
      this.imageUrl,
      this.city,
      this.country,
      String description,
      this.activities
    });
}


List<Activity> activities = [

  Activity(
    imageUrl: 'assets/images/1.jpg',
    name: 'LivingStone',
    type: 'Livite tour',
    startTime: ['8:00 am','11:00 am'],
    rating: 4,
    price: 30,
  ),
   Activity(
    imageUrl: 'assets/images/2.jpg',
    name: 'Matopos',
    type: 'MAtopo Hills',
    startTime: ['12:00 am','14:00 pm'],
    rating: 3,
    price: 300,
  ),
   Activity(
    imageUrl: 'assets/images/3.jpg',
    name: 'Victoria Falls',
    type: 'Falls',
    startTime: ['18:00 ','21:00'],
    rating: 5,
    price: 550,
  ),
   Activity(
    imageUrl: 'assets/images/4.jpg',
    name: 'Great Zim',
    type: 'Great Zimbabwe',
    startTime: ['8:00 am','11:00 am'],
    rating: 4,
    price: 90,
  ),
   Activity(
    imageUrl: 'assets/images/5.jpg',
    name: 'Zvimba',
    type: 'Zvimba tour',
    startTime: ['8:00 am','11:00 am'],
    rating: 5,
    price: 290,
  ),
   Activity(
    imageUrl: 'assets/images/6.jpg',
    name: 'Dunken',
    type: 'Dunken tour',
    startTime: ['9:00 am','11:00 am'],
    rating: 4,
    price: 350,
  ),
   Activity(
    imageUrl: 'assets/images/7.jpg',
    name: 'Chinhoyi',
    type: 'Chinhoyi tour',
    startTime: ['6:00 am','11:00 am'],
    rating: 3,
    price: 70,
  ),
   Activity(
    imageUrl: 'assets/images/8.jpg',
    name: 'Bulawayo',
    type: 'Bulawayo tour',
    startTime: ['7:00 am','11:30 am'],
    rating: 2,
    price: 60,
  ), 
];

List<Destination> destination = [
  Destination(
    imageUrl: 'assets/images/1.jpg',
    city: "LivingStone",
    country: "Zimbabwe",
    description:"Visit this cool and nice place!",
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/2.jpg',
    city: "Matopos",
    country: "Zimbabwe",
    description:"Visit this cool and nice place!",
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/3.jpg',
    city: "Vic Falls",
    country: "Zimbabwe",
    description:"Visit this cool and nice place!",
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/4.jpg',
    city: "Great Zim",
    country: "Zimbabwe",
    description:"Visit this cool and nice place!",
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/5.jpg',
    city: "Zvimba",
    country: "Zimbabwe",
    description:"Visit this cool and nice place!",
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/6.jpg',
    city: "Dunken",
    country: "Zimbabwe",
    description:"Visit this cool and nice place!",
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/7.jpg',
    city: "Chinhoyi",
    country: "Zimbabwe",
    description:"Visit this cool and nice place!",
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/7.jpg',
    city: "Bulawayo",
    country: "Zimbabwe",
    description:"Visit this cool and nice place!",
    activities: activities,
  ),
];