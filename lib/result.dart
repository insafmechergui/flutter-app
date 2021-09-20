import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!, Your score is  $resultScore' ;
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable! $resultScore';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?! $resultScore';
    } else {
      resultText = 'You are so bad! $resultScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
