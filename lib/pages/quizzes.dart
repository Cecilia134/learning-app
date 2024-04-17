// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'bio_quiz.dart'; 
import 'phys_quiz.dart';
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
            DropdownButton<String>(
              hint: Text('Select Quiz'),
              onChanged: (String? value) {
                if (value != null) {
                  switch (value) {
                    case 'Biology':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BiologyQuizPage(),
                        ),
                      );
                      break;
                    case 'Physics':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhysicsQuizPage(),
                        ),
                      );
                      break;
                    case 'Chemistry':
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChemistryQuizPage(),
                        ),
                      );
                      break;
                  }
                }
              },
              items: <String>['Biology', 'Physics', 'Chemistry']
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value + ' Quiz'),
                    ),
                  )
                  .toList(),
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
