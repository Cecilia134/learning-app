// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

class BiologyQuizPage extends StatefulWidget {
  @override
  _BiologyQuizPageState createState() => _BiologyQuizPageState();
}

class _BiologyQuizPageState extends State<BiologyQuizPage> {
  final List<Map<String, String>> quizData = [
    {
      'question': 'What is the powerhouse of the cell?',
      'answer': 'Mitochondria',
    },
    {
      'question': 'What is the process by which plants make their own food?',
      'answer': 'Photosynthesis',
    },
    {
      'question': 'What is the largest organ in the human body?',
      'answer': 'Skin',
    },
    {
      'question': 'What type of cells are red blood cells?',
      'answer': 'Erythrocytes',
    },
    {
      'question': 'What is the study of fossils called?',
      'answer': 'Paleontology',
    },
    {
      'question': 'Which gas is essential for respiration?',
      'answer': 'Oxygen',
    },
    
    {
      'question': 'What is the process by which organisms produce offspring?',
      'answer': 'Reproduction',
    },
    {
      'question': 'What is the main function of the circulatory system?',
      'answer': 'Transportation of nutrients and oxygen',
    },
    {
      'question': 'What are the building blocks of proteins?',
      'answer': 'Amino acids',
    },
    {
      'question': 'What is the function of the nucleus in a cell?',
      'answer': 'Control center; contains DNA',
    },
    
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

  List<String> generateRandomOptions(String correctAnswer) {
    final List<String> allOptions = [];
    allOptions.add(correctAnswer);

    while (allOptions.length < 4) {
      final randomIndex = Random().nextInt(quizData.length);
      final option = quizData[randomIndex]['answer'];
      if (!allOptions.contains(option)) {
        allOptions.add(option!);
      }
    }

    allOptions.shuffle();
    return allOptions;
  }

  String? _selectedOption;
  bool _showTick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biology Quiz'),
        backgroundColor: Color.fromARGB(255, 127, 45, 214),
      ),
      backgroundColor: Color.fromARGB(255, 14, 200, 237),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: selectedQuestions.length,
          itemBuilder: (context, index) {
            final question = selectedQuestions[index];
            final List<String> options =
                generateRandomOptions(question['answer']!);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Question ${index + 1}: ${question['question']}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 8),
                Column(
                  children: options.map((option) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: RadioListTile(
                        title: Text(option),
                        groupValue: _selectedOption,
                        value: option,
                        onChanged: (value) {
                          setState(() {
                            _selectedOption = value as String?;
                            _showTick = value == question['answer'];
                          });
                        },
                        secondary: _selectedOption == question['answer']
                            ? Icon(
                                _showTick ? Icons.check : Icons.close,
                                color: _showTick ? Colors.green : Colors.red,
                              )
                            : null,
                      ),
                    );
                  }).toList(),
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
