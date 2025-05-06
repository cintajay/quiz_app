import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;

  const AnswerButton({
    super.key, 
    required this.answerText
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}