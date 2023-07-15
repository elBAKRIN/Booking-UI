
import 'package:flutter/material.dart';
import '../widget/app_bar_home.dart';
import '../widget/view_all_places.dart';

class BookingHomePage extends StatelessWidget {
  const BookingHomePage({super.key,required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: CustomScrollView(
        slivers: [
         // const AppBarHome(),
         // CategoriesHome(),
          AppBarScrolling(),
          ViewAllProducts()
        ],
      ),
    );
  }
}




