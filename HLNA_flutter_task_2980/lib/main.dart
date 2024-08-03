import 'package:flutter/material.dart';
import 'package:flutter_task_2980/screens/home.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Raleway",
        scaffoldBackgroundColor: const Color(0xFFFAFAFA)
      ),
      home: const HomeScreen(),
    );
  }
}

