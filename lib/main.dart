// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Study App',
      theme: ThemeData(
        primaryColor: Colors.blue, 
      ),
      home: HomePage(),
    );
  }
}
