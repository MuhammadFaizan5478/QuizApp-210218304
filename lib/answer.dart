import 'package:flutter/material.dart';
import 'main.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // use SizedBox for white space instead of Container
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => selectHandler(),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.fromLTRB(20, 15, 20, 15),
                ),
                textStyle: MaterialStateProperty.all(const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w600,
                )),
                backgroundColor: MaterialStateProperty.all(
                    iconbool ? Colors.orange : Colors.red)),
            child: Text(
              textAlign: TextAlign.center,
              answerText,
            ),
          ),
        ),
        const SizedBox(height: 15.0),
      ],
    ); //Container
  }
}
