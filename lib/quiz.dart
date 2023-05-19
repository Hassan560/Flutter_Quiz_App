import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;

  Quiz(
      {required this.questionIndex,
      required this.answerQuestion,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              handleChange: () => answerQuestion(answer['score']),
              answerText: answer['text'] as String);
        }).toList()
      ],
    );
  }
}
