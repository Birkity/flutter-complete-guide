import 'package:flutter/material.dart';
import './questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      'What\'s your name',
      'What\'s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            ElevatedButton(
                onPressed: _answerQuestions,
                child: Text(
                  'Answer 1',
                )),
            ElevatedButton(
                onPressed: _answerQuestions,
                child: Text(
                  'Answer 2',
                )),
            ElevatedButton(
                onPressed: _answerQuestions,
                child: Text(
                  'Answer 3',
                )),
          ],
        ),
      ),
    );
  }
}
