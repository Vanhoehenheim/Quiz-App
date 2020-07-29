import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;

  Result(this.reset, this.totalScore);

  String get resultPhrase {
    String result;
    if (totalScore >= 30) {
      result = "You are Awesome!";
    } else if (totalScore >= 20) {
      result = "You are Awesomeish?";
    } else if (totalScore >= 12) {
      result = "You are Awesome!";
    } else {
      result = "I Hate you :(";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reset,
            child: Text(
              "Reset",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
