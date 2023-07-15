class PlacesController {
  Map<String,List<PlaceInfo>> allplaces = {
    "الملاعب":[
      PlaceInfo(name: "ملعب البندر",location: "فوة الكورنيش",price: 1600,rating: 4.7,hold:"ساعة",time: "",image: "assets/images/places/p1.jpg"),
      PlaceInfo(name: "ملعب الريان",location: "فوة الشافعي",price: 2900,rating: 3.4,hold:"ساعة",time: "",image: "assets/images/places/p2.png"),
      PlaceInfo(name: "ملعب الشعلة",location: "فوة الستين",price: 2000,rating: 2.4,hold:"ساعة",time: "",image: "assets/images/places/p3.jpg"),
      PlaceInfo(name: "ملعب بارادم",location: "امبيخة",price: 1300,rating: 4.4,hold:"ساعة",time: "",image: "assets/images/places/p4.png"),
    ],
    "المسابح":[
      PlaceInfo(name: "استراحة ومسابح الواحة",location: "فوة المساكن",price: 1200,rating: 4.3,hold:"ساعة",time: "12",image: "assets/images/places/m1.jpg"),
      PlaceInfo(name: "منتج ومسابح الكورنيش",location: "فوة الكورنيش",price: 2900,rating: 3.4,hold:"ساعة",time: '12',image: "assets/images/places/m2.jpg"),
    ],
    "القاعات":[
      PlaceInfo(name: "قاعة ميرال",location: "المكلا بجانب الهايبر",price: 1200,rating: 4.3,hold:"الليلة",time: "",image: "assets/images/places/h1.jpeg"),
      PlaceInfo(name: "قاعة الأندلس",location: "40 شقة خلف مول الاندلس",price: 2900,rating: 3.4,hold:"الليلة",time: "",image: "assets/images/places/h2.jpg"),
      PlaceInfo(name: "قاعة مكة",location: "الستين فندق مكة",price: 2900,rating: 3.4,hold:"الليلة",time: "",image: "assets/images/places/h3.jpg"),
    ],
  };
}

class PlaceInfo{
  final String name;
  final String location;
  final double rating;
  final int price;
  final String image;
  final String time;
  final String hold;

  PlaceInfo({required this.name, required this.location, required this.rating, required this.price, required this.image, required this.time,required this.hold});
}