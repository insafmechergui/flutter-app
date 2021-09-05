import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex + 1;

    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions=[
      {
        'questionText': 'whats your favorite color?',
        'answers':['Black','Red','Green','White'],
      },
      {
        'questionText': 'whats your favorite animal?',
        'answers':['Rabbit','Snake','Elephant','Lion'],
      },
      {
        'questionText': 'who\'s your favorite instructor?',
        'answers':['Matt','Max','Alex','Lean'],
      },
    {
        'questionText': 'What\'s the meaning of Afflatus?',
        'answers': ['ghost','inspiration','lifeless','greedy'],
    },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body:Column(
          children:[
            Question(
              questions[_questionIndex]['questionText']?.toString() ?? '',
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
             return Answer(_answerQuestion, answer);
           }) .toList()
          ],
        ),
    ),
    );
  }
}