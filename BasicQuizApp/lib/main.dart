import 'package:flutter/material.dart';
import 'package:hello_World/result.dart';
import './quiz.dart';
import './result.dart';

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
  var _questionIndex = 0;

  var _questions = [
    {
      "question": "Favourite Animal",
      "answers": [
        {"text": "Rabbit", "score": 10},
        {"text": "Snake", "score": 20},
        {"text": "Elephant", "score": 30},
        {"text": "Lion", "score": 40},
      ],
    },
    {
      "question": "Favourite Color",
      "answers": [
        {"text": "Red", "score": 10},
        {"text": "Blue", "score": 20},
        {"text": "Green", "score": 30},
      ],
    },
    {
      "question": "Favourite Enterpr",
      "answers": [
        {"text": "Jobs", "score": 10},
        {"text": "Tesla", "score": 20},
        {"text": "Mahindra", "score": 30},
        {"text": "Bill", "score": 40},
      ],
    },
  ];

  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App!"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
