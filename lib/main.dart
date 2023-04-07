import 'package:flutter/material.dart';
import 'package:quiz_2/homepage.dart';
import './quiz.dart';
import './result.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.light,
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.red,
  ),
);

ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.orange,
  brightness: Brightness.dark,
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.orange,
  ),
);

void main() => runApp(MaterialApp(
      theme: iconbool ? darkTheme : lightTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes: {
        '/main': (context) => const MyApp(),
        '/home': (context) => const HomePage(),
      },
      home: const HomePage(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

bool iconbool = false;
IconData iconLight = Icons.wb_sunny;
IconData iconDark = Icons.nights_stay;

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText':
          'Q1. Which protocol is used to transfer files over the Internet?',
      'answers': [
        {'text': 'TCP', 'score': -1},
        {'text': 'IP', 'score': -1},
        {'text': 'FTP', 'score': 2},
        {'text': 'SMTP', 'score': -1},
      ],
    },
    {
      'questionText':
          'Q2. What is the maximum number of hosts that can be connected to a Class C network?',
      'answers': [
        {'text': '254', 'score': 2},
        {'text': '256', 'score': -1},
        {'text': '65534', 'score': -1},
        {'text': '16777214', 'score': -1},
      ],
    },
    {
      'questionText':
          ' Q3. What is the purpose of a router in a computer network?',
      'answers': [
        {'text': 'To connect two or more networks together', 'score': -1},
        {'text': 'To control network access', 'score': -1},
        {'text': 'To provide wireless access to the network', 'score': -1},
        {'text': 'To monitor network traffic', 'score': 2},
      ],
    },
    {
      'questionText':
          'Q4. What is the name of the protocol used to send and receive email messages over the Internet?',
      'answers': [
        {'text': 'SMTP', 'score': 2},
        {'text': 'HTTP', 'score': -1},
        {'text': 'FTP', 'score': -1},
        {'text': 'DNS', 'score': -1},
      ],
    },
    {
      'questionText':
          'Q5. Which of the following is not a type of computer network topology?',
      'answers': [
        {'text': 'Bus', 'score': -1},
        {'text': 'Ring', 'score': -1},
        {'text': 'Star', 'score': -1},
        {'text': 'Triangle', 'score': 2},
      ],
    },
  ];

  var questionIndex = 0;
  var totalScore = 0;
  void reset() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    if (score > 0) {
      totalScore += score;
    } else {
      score = 0;
    }

    setState(() {
      questionIndex = questionIndex + 1;
    });
    // ignore: avoid_print
    print(questionIndex);
    if (questionIndex < questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: iconbool ? Colors.grey[850] : Colors.white,
      appBar: AppBar(
        backgroundColor: iconbool ? Colors.grey[900] : Colors.red,
        title: const Text('Computer Network Quiz 1'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  iconbool = !iconbool;
                });
              },
              icon: Icon(iconbool ? iconDark : iconLight))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore, reset),
        //Quiz
      ),
    );
  }
}
