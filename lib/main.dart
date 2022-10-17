import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}
//void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Rabit', 'score': 10},
        {'text': 'Snake', 'score': 7},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Lion', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor',
      'answers': [
        {'text': 'Jeanne', 'score': 10},
        {'text': 'Pelin', 'score': 6},
        {'text': 'Christine', 'score': 4},
        {'text': 'Dr James', 'score': 2}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    //var bool = true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
