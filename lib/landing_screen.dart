import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LandingScreen extends StatelessWidget {
final void Function() startQuiz;

  const LandingScreen(void Function() this.startQuiz, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png", width: 300,
               color: const Color.fromARGB(170, 255, 255, 255),
              ),
            SizedBox(height: 40),
            Text(
              "Quiz App",
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 40),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom( //predefined button styles
                foregroundColor: Colors.white
              ),
              label: Text("Start Quiz"),
              icon: Icon(Icons.arrow_right_alt),
            ),
           ],
         ),
    );
  }
}