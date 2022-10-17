//import 'dart:html';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 8) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are... Strange';
    } else {
      resultText = 'You are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
              child: Text('Restart Quiz'),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Color.fromARGB(31, 0, 0, 0)),
              onPressed: resetHandler),
        ],
      ),
    );
  }
}
