import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;
  final answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.cyan, foregroundColor: Colors.white),
        onPressed: selectHandler, //_answerQuestion,
        child: Text(answerText),
      ),
    );
  }
}
