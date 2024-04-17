// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'dart:math';

import 'package:flutter/material.dart';

class ChemistryQuizPage extends StatefulWidget {
  @override
  _ChemistryQuizPageState createState() => _ChemistryQuizPageState();
}

class _ChemistryQuizPageState extends State<ChemistryQuizPage> {
  final List<Map<String, String>> quizData = [
    {
      'question': 'What is the chemical symbol for water?',
      'answer': 'H2O',
    },
    {
      'question': 'What is the atomic number of oxygen?',
      'answer': '8',
    },
    {
      'question': 'What is the formula for sulfuric acid?',
      'answer': 'H2SO4',
    },
    // Add more questions and answers here
    {
      'question': 'What is the chemical symbol for sodium?',
      'answer': 'Na',
    },
    {
      'question': 'What is the most abundant gas in Earth\'s atmosphere?',
      'answer': 'Nitrogen',
    },
    {
      'question': 'What is the pH scale used to measure?',
      'answer': 'Acidity or alkalinity of a substance',
    },
    // Add more questions and answers here
    {
      'question': 'What is the chemical symbol for gold?',
      'answer': 'Au',
    },
    {
      'question': 'What is the chemical formula for table salt?',
      'answer': 'NaCl',
    },
    {
      'question': 'What is the process of splitting atoms called?',
      'answer': 'Nuclear fission',
    },
    // Add more questions and answers here
  ];

  List<Map<String, String>> selectedQuestions = [];

  @override
  void initState() {
    super.initState();
    selectRandomQuestions();
  }

  void selectRandomQuestions() {
    final random = Random();
    final Set<int> selectedIndexes = {};

    while (selectedIndexes.length < 10) {
      final index = random.nextInt(quizData.length);
      selectedIndexes.add(index);
    }

    selectedQuestions = selectedIndexes
        .map((index) => quizData[index])
        .toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chemistry Quiz'),
        backgroundColor: Color.fromARGB(255, 127, 45, 214),
      ),
      backgroundColor: Color.fromARGB(255, 14, 200, 237),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: selectedQuestions.length,
          itemBuilder: (context, index) {
            final question = selectedQuestions[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Question ${index + 1}: ${question['question']}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 8),
                // Replace this with your multiple-choice options widget
                Text(
                  'Answer: ${question['answer']}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
              ],
            );
          },
        ),
      ),
    );
  }
}
