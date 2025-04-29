import 'package:flutter/material.dart';


class LandingScreen extends StatelessWidget {
  const LandingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/quiz-logo.png", width: 300),
            SizedBox(height: 40),
            Text(
              "Quiz App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 40),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom( //predefined button styles
                foregroundColor: Colors.white
              ), 
              child: Text("Start Quiz"),
            ),
           ],
         ),
    );
  }
}