// ignore: unused_import
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What is your favorite color?',
      'answerText': [
        {'text': 'Red', 'score': 10},
        {'text': 'Yellow', 'score': 5},
        {'text': 'Black', 'score': 3},
        {'text': 'Pink', 'score': 1},
      ]
    },
    {
      'questionText': 'What is your favorite car?',
      'answerText': [
        {'text': 'Ferrari', 'score': 1},
        {'text': 'Mercedesz', 'score': 10},
        {'text': 'Civic', 'score': 3},
        {'text': 'Honda', 'score': 5},
      ]
    },
    {
      'questionText': 'What is your favorite Country?',
      'answerText': [
        {'text': 'Thailand', 'score': 5},
        {'text': 'America', 'score': 1},
        {'text': 'Pakistan', 'score': 10},
        {'text': 'Dubai', 'score': 3},
      ]
    },
    {
      'questionText': 'What is your favorite Game?',
      'answerText': [
        {'text': 'Tennis', 'score': 10},
        {'text': 'Football', 'score': 5},
        {'text': 'Hockey', 'score': 3},
        {'text': 'Cricket', 'score': 1},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  dynamic _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  dynamic _answerChange(int score) {
    _totalScore += score;
    // print(_totalScore);

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print(_questionIndex);

    // if (_questionIndex < _questions.length) {
    //   print('We have more questions');
    // } else {
    //   print('No more questions');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Quiz App')),
            backgroundColor: const Color.fromARGB(255, 2, 16, 35),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questionIndex: _questionIndex,
                  questions: _questions,
                  answerQuestion: _answerChange,
                )
              : Result(resultScore: _totalScore, reset: _resetQuiz)),
    );
  }
}
