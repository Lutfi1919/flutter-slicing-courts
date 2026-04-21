import 'package:application_sewa_lapangan/views/boarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Court Booking',
      debugShowCheckedModeBanner: false,
      home: BoardingPage(),
    );
  }
}