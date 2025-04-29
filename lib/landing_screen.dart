import 'package:flutter/material.dart';


class LandingScreen extends StatelessWidget {
  const LandingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
       body: Center(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/quiz-logo.png", width: 250),
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
            ElevatedButton(
              onPressed: () {},
              child: Text("Start Quiz"),
            ),
           ],
         ),
       ),
    );
  }
}