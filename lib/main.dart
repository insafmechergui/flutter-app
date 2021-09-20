import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const[
  {
  'questionText': 'whats your favorite color?',
  'answers':[
  {'text': 'Black', 'score': 10},
  {'text':'Red', 'score':5},
  {'text':'Green', 'score':3},
  {'text':'White','score': 0},
],
},
{
'questionText': 'whats your favorite animal?',
'answers':[
  {'text':'Rabbit','score':3},
  {'text':'Snake','score':11},
  {'text':'Elephant','score':5},
  {'text':'Lion','score':9},
],
},
{
'questionText': 'who\'s your favorite instructor?',
'answers':[
  {'text':'Matt','score':1},
  {'text':'Max', 'score':2},
  {'text':'Alex','score':3},
  {'text':'Lean','score':4},
],
},
{
'questionText': 'What\'s the meaning of Afflatus?',
'answers': [
  {'text':'ghost','score':11},
  {'text':'inspiration','score':3},
  {'text':'lifeless','score':8},
  {'text':'greedy','score':10}
  ],
},
];

var _questionIndex = 0;
var _totalScore = 0;

   void _answerQuestion(int score) {

  _totalScore += score;

  setState(() {
    _questionIndex = _questionIndex + 1;
  });

  print(_questionIndex);

  if (_questionIndex < _questions.length) {
    print('We have more question');
  }
  else {
    print('No more questions!');
  }
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to the first Quiz \\^o^/"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,
        )
            : Result(_totalScore)

    ),
  );
}}