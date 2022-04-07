// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF1190DE),
          onPrimary: Colors.black,
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
