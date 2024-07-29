import 'package:flutter/material.dart';
import 'package:task_6/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // Set theme to dark mode
      home: HomePage(),
    );
  }
}
