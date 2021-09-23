import 'package:flutter/material.dart';
import 'package:gb_app_ui/pages/my_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GB App UI Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Color(0xffd65f5b),
      ),
      home: MyPages(),
    );
  }
}

