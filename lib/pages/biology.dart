// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BiologyPage extends StatelessWidget {
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
    // Add more questions and answers here
    {
      'question': 'What is the study of fossils called?',
      'answer': 'Paleontology',
    },
    {
      'question': 'Which gas is essential for respiration?',
      'answer': 'Oxygen',
    },
    // Add more questions and answers here
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
   
    {
      'question': 'What is the process of converting food into energy?',
      'answer': 'Cellular respiration',
    },
    {
      'question': 'What are the primary organs of the respiratory system?',
      'answer': 'Lungs',
    },
    
    {
      'question': 'What is the scientific study of animal behavior called?',
      'answer': 'Ethology',
    },
    {
      'question': 'What are the two main types of cells?',
      'answer': 'Prokaryotic and eukaryotic cells',
    },
    
    {
      'question': 'What is the name of the process by which plants lose water?',
      'answer': 'Transpiration',
    },
    {
  'question': 'What is the function of chlorophyll in plants?',
  'answer': 'It helps plants absorb light energy for photosynthesis.',
  },
  {
    'question': 'What is the name of the pigment responsible for the green color of plants?',
    'answer': 'Chlorophyll.',
  },
  {
    'question': 'What is the function of ribosomes in a cell?',
    'answer': 'They are responsible for protein synthesis.',
  },
  {
    'question': 'What is the process by which cells break down glucose to release energy?',
    'answer': 'Cellular respiration.',
  },
  {
    'question': 'What is the role of DNA in a cell?',
    'answer': 'It contains genetic information and instructions for cellular functions.',
  },
  {
    'question': 'What is the purpose of mitosis?',
    'answer': 'It is the process of cell division for growth, repair, and asexual reproduction.',
  },
  {
    'question': 'What is the function of the cell membrane?',
    'answer': 'It controls the movement of substances in and out of the cell.',
  },
  {
    'question': 'What is the structure that stores genetic material in a eukaryotic cell?',
    'answer': 'The nucleus.',
  },
  {
    'question': 'What is the process by which a cell engulfs a particle to bring it into the cell?',
    'answer': 'Endocytosis.',
  },
  {
    'question': 'What are the tiny structures in a cell where protein synthesis occurs?',
    'answer': 'Ribosomes.',
  },
  {
    'question': 'What is the main function of the cytoplasm in a cell?',
    'answer': 'It is the jelly-like substance that holds organelles in place and facilitates cellular processes.',
  },
  {
    'question': 'What is the name of the process by which plants respond to light?',
    'answer': 'Phototropism.',
  },
  {
    'question': 'What is the function of the Golgi apparatus?',
    'answer': 'It modifies, sorts, and packages proteins for secretion or transport.',
  },
  {
    'question': 'What is the name of the process by which cells become specialized for specific functions?',
    'answer': 'Differentiation.',
  },

    {
      'question': 'What is the main function of the digestive system?',
      'answer': 'Breaking down food and absorbing nutrients',
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biology'),
        backgroundColor: Color.fromARGB(255, 127, 45, 214), 
      ),
      backgroundColor: Color.fromARGB(255, 14, 200, 237), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: quizData.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Question ${index + 1}: ${quizData[index]['question']}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 8),
                Text(
                  'Answer: ${quizData[index]['answer']}',
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
