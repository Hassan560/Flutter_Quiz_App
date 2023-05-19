import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;

  Result({required this.resultScore, required this.reset});

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are so bad!';
    } else if (resultScore <= 12) {
      resultText = 'You are strange!';
    } else if (resultScore <= 16) {
      resultText = 'Pretty Good!';
    } else {
      resultText = 'You are awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              resultPhase,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black),
                onPressed: () => reset(),
                child: const Text('Reset Quiz'))
          ],
        ));
  }
}
