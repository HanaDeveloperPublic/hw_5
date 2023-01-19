import 'package:flutter/material.dart';
import 'package:hw_5/Pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //color: Colors.white,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: const Home(),
    );
  }
}
