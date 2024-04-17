import 'package:flutter/material.dart';
import 'pages/bio_quiz.dart';
import 'pages/chem_quiz.dart';
import 'pages/home_page.dart';
import 'pages/phys_quiz.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/bio_quiz': (context) => BiologyQuizPage(),
        '/phys_quiz': (context) => PhysicsQuizPage(),
        '/chem_quiz': (context) => ChemistryQuizPage(),
      },
    );
  }
}
