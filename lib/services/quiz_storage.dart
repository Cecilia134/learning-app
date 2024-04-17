// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuizStorage {
  static const _quizKey = 'quizData';

  Future<void> saveQuizData(List<Map<String, String>> quizData) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> encodedData = quizData.map((q) => json.encode(q)).toList();
    await prefs.setStringList(_quizKey, encodedData);
  }

  Future<List<Map<String, String>>> getQuizData() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? encodedData = prefs.getStringList(_quizKey);
    if (encodedData != null) {
      final List<Map<String, String>> decodedData = encodedData
          .map<Map<String, String>>((e) => json.decode(e))
          .toList();
      return decodedData;
    }
    return [];
  }
}
