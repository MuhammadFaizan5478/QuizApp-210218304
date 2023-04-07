// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:quiz_2/main.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetbutton;

  const Result(this.score, this.resetbutton, {Key? key}) : super(key: key);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (score >= 8) {
      resultText = 'You are awesome!';
      print(score);
    } else if (score >= 6) {
      resultText = 'Pretty likeable!';
      print(score);
    } else if (score >= 4) {
      resultText = 'You need to work more!';
    } else if (score >= 2) {
      resultText = 'You need to work hard!';
    } else if (score > 0) {
      resultText = 'This is a poor score!';
    } else {
      resultText = 'This is a poor score!';
      print(score);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Your score is ' '$score',
            style: TextStyle(
              fontSize: 32,
              fontFamily: 'montserrat',
              fontWeight: FontWeight.w500,
              color: iconbool ? Colors.white : Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: iconbool ? Colors.white : Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
            child: Container(
              color: iconbool ? Colors.orange : Colors.red,
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: const Text(
                'Back to Home Page',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
