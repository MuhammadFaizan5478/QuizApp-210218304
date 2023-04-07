import 'package:flutter/material.dart';
import 'package:quiz_2/main.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 30),
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 24,
            color: iconbool ? Colors.white : Colors.black,
            fontFamily: 'montserrat'),
        textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}
