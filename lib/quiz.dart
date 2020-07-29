import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(this.answerQuestion, this.questions, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(
                    answer["Score"],
                  ),
              answer["Text"]);
        }).toList()
      ],
    );
  }
}
