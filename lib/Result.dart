import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultValue;
  final VoidCallback resetQuiz;
  String get resultPhrase {
    var resulttext = 'You did it';
    if (resultValue <= 8) {
      resulttext = "You are awsome!!!";
    }else if (resultValue <= 12){
      resulttext = 'You are Good!!!';
    }else{
      resulttext = 'You are Bad!!!';
    }
    return resulttext;
  }

  Result(this.resultValue, this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetQuiz, 
          child: Text('Go to home page'),
          ),
          
        ],
      ),
    );
  }
}
