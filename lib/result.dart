import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.resultScore, {Key? key, required this.resetHandler}) : super(key: key);
  final VoidCallback resetHandler;
  final int resultScore;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent !";
    }else if (resultScore <=12 ) {
      resultText = "Pretty likeable !";
    } else if (resultScore <= 16) {
      resultText = "You... are strange !";
    } else {
      resultText = "You are so bad !";
    }
  return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '''
$resultPhrase
Your score : $resultScore
            ''',
            style: const TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: const Text(
              "Reset",
              style: TextStyle(fontSize: 28),
            ),
          ),
        ],
      ),
    );
  }
}
