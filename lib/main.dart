import 'package:flutter/material.dart';

import 'views/pages/home.dart';

void main() {
  runApp(const BookingUi());
}

class BookingUi extends StatelessWidget {
  const BookingUi({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking UI',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      //const HomePage(title: 'Booking Demo Home Page'),
    );
  }
}

