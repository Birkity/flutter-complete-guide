import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s favorite color ?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite instructor ?',
      'answers': ['Mr. Smith', 'Mr. Johnson', 'Mr. Brown', 'Ms. Spencer'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions.');
    }else if(){
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Column(
                  children: [
                    Question(
                      _questions[_questionIndex]['questionText'] as String,
                    ),
                    ...(_questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestions, answer);
                    }).toList()
                  ],
                )
              : Center(
                  child: Text('You did it !'),
                )),
    );
  }
}
