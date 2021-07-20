import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/Result.dart';
import 'Quiz.dart';
import 'Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _indexValue = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      'questionText': 'what is your fav color',
      'answertext': [
        {"text": "black", "score": 5},
        {"text": "white", "score": 4},
        {"text": "red", "score": 3},
        {"text": "pink", "score": 2},
      ],
    },
    {
      'questionText': 'what is your fav animal',
      'answertext': [
        {"text": "Zebra", "score": 5},
        {"text": "lion", "score": 4},
        {"text": "tiger", "score": 3},
        {"text": "Elephant", "score": 2},
      ]
    },
    {
      'questionText': 'what is your fav name',
      'answertext': [
        {"text": "bulbul", "score": 5},
        {"text": "Praveen", "score": 4},
      ]
    },
  ];

  void _answerChossen(int score) {
    _totalScore += score;
    setState(() {
      _indexValue++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _indexValue = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Home pages'),
          ),
          body: _indexValue < _questions.length
              ? Quiz(_questions, _answerChossen, _indexValue)
              : Result(_totalScore,_resetQuiz)),
    );
  }
}
