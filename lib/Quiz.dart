import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/Answers.dart';
import 'Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int questionIndex;
  Quiz(this.questions, this.answerQuestions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answertext'] as List<Map<String, Object>>)
            .map((someText) {
          return Answers(()=>answerQuestions(someText['score']), someText['text'] as String);
        })
      ],
    );
  }
}
