import 'package:flutter/material.dart';
import 'package:quiz_2/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: iconbool ? Colors.grey[850] : Colors.white,
      appBar: AppBar(
        backgroundColor: iconbool ? Colors.grey[900] : Colors.red,
        title: const Text(
          'Welcome to Quiz App',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
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
      body: Center(
        //heightFactor: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Computer Network Quiz',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: iconbool ? Colors.white : Colors.black,
                  fontFamily: 'montserrat',
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                'To begin the quiz, click Begin. The wrong response could affect your score. Best of luck!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: iconbool ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/main');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                  backgroundColor: iconbool ? Colors.orange : Colors.red,
                ),
                child: const Text(
                  'Begin',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
