import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var _questions = [
      {
        "questionText": "What's your fav Animal?",
        "answers": [
          {"Text": "Pig", "Score": 10},
          {"Text": "Dog", "Score": 7},
          {"Text": "Orange Tabby", "Score": 5},
          {"Text": "Fish", "Score": 2}
        ],
      },
      {
        "questionText": "What's your fav Colour?",
        "answers": [
          {"Text": "Red", "Score": 10},
          {"Text": "Blue", "Score": 7},
          {"Text": "Yellow", "Score": 5},
          {"Text": "White", "Score": 2}
        ],
      },
      {
        "questionText": "How many abs does Prajay have",
        "answers": [
          {"Text": "50", "Score": 10},
          {"Text": "40", "Score": 7},
          {"Text": "30", "Score": 5},
          {"Text": "10", "Score": 2}
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("My First App Lmao"),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_resetQuiz, _totalScore),
      ),
    );
  }
}
