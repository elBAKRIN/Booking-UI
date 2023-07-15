


import 'package:booking_ui/views/pages/booking_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int indexPage = 0;
  final List<Widget> _pages = [
    const BookingHomePage(title: 'Booking Demo Home Page'),
    const BookingHomePage(title: 'Booking Demo Home Page'),
    const BookingHomePage(title: 'Booking Demo Home Page'),
    const BookingHomePage(title: 'Booking Demo Home Page'),
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      //extendBody: true,
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
      color: Colors.white,
      elevation: 0.0,
      clipBehavior: Clip.none,
      child: Padding(
      padding: const EdgeInsets.only(top: 3),
      child: Container(
        height: 67,
        decoration: BoxDecoration(
        color:  Colors.white,
        borderRadius:const BorderRadius.all(Radius.circular(0)),
        boxShadow: [BoxShadow(color: Colors.grey.shade100.withOpacity(0.5),blurRadius: 0.0, spreadRadius: 3.0)]
      ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
            width: MediaQuery.of(context).size.width/4,
            height: 42,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 0.0),
                  child: Icon( CupertinoIcons.person_crop_square,size: 23,color: Colors.black,),
                ),
                Text("حسابي",style: TextStyle(fontSize: 12,fontFamily: "almarai"),)
              ],
              ),
            ),
            
            SizedBox(
            width: MediaQuery.of(context).size.width/4,
            height: 42,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 0.0),
                  child: Icon( Icons.favorite_border_rounded,size: 23,color: Colors.black,),
                ),
                Text("المفضلة",style: TextStyle(fontSize: 12,fontFamily: "almarai"),)
              ],
              ),
            ),

            SizedBox(
            width: MediaQuery.of(context).size.width/4,
            height: 42,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 0.0),
                  child: Icon( Icons.map_outlined,size: 23,color: Colors.black,),
                ),
                Text("الحجوزات",style: TextStyle(fontSize: 12),)
              ],
              ),
            ),

            SizedBox(
            width: MediaQuery.of(context).size.width/4,
            height: 52,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 52,
                  height: 52,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(19, 0, 0, 0),
                    borderRadius: BorderRadius.all(Radius.circular(60))
                  ),
                  child: const Icon( CupertinoIcons.bubble_middle_bottom_fill,size: 23,color: Colors.black,),
                ),
              ],
              ),
            )
               
            ],
          ),
        ),
      ),
    ),
    body: IndexedStack(
      index:indexPage,
      children: _pages,
    ),
    );
  }
}