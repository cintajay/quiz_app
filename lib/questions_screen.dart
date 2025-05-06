import 'package:flutter/material.dart';
import 'package:quiz_app/answer_btn.dart';
import 'package:quiz_app/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }  
}

class _QuestionsState extends State<Questions> { //_ -> private class  
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((item) {
            return AnswerButton(answerText: item);
          }),
        ],
      ),
    );
  }
}
