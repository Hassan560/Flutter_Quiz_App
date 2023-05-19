import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function handleChange;
  final String answerText;

  Answers({required this.handleChange, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 1, 96, 75),
          foregroundColor: Color.fromARGB(255, 241, 246, 246)
        ),
          onPressed: () => handleChange(),
          child: Text(
            answerText,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          )),
    );
  }
}
