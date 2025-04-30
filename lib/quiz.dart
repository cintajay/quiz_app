import 'package:flutter/material.dart';
import 'package:quiz_app/landing_screen.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }  
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const LandingScreen();

  void changeScreen() {
    setState(() {
      activeScreen = Questions();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 86, 64, 123),
                Color.fromARGB(255, 52, 14, 119),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}