// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'bio_quiz.dart'; 
import 'phys.quiz.dart';
import 'chem_quiz.dart'; 

class QuizzesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzes', textAlign: TextAlign.center), 
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 127, 45, 214),
      ),
      backgroundColor: Color.fromARGB(255, 14, 200, 237), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BiologyQuizPage(), 
                  ),
                );
              },
              child: Text('Biology Quiz'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhysicsQuizPage(), 
                  ),
                );
              },
              child: Text('Physics Quiz'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChemistryQuizPage(), 
                  ),
                );
              },
              child: Text('Chemistry Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectScreen extends StatelessWidget {
  final String subject;

  SubjectScreen({required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subject),
      ),
      body: Center(
        child: Text(
          'Welcome to the $subject subject screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuizzesPage(),
  ));
}
