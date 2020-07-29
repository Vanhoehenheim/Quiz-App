import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String question;

  Questions(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
        question,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
