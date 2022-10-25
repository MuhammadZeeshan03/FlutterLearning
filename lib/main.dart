import 'package:flutter/material.dart';

import './question.dart';
import './Answer.dart';
import './Quiz.dart';
import './Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  final _questions = const [
    {
      'text': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'text': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'text': 'What\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max']
    },
  ];

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'text': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1}
        ]
      },
      {
        'text': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 3},
          {'text': 'Snake', 'score': 11},
          {'text': 'Elephant', 'score': 5},
          {'text': 'Lion', 'score': 9}
        ]
      },
      {
        'text': 'What\'s your favorite instructor?',
        'answers': [
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1}
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
