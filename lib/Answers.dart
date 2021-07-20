import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answers(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(8),
        child: ElevatedButton(
            onPressed: selectHandler,
            child: Text(answerText),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue))),
      ),
    );
  }
}
