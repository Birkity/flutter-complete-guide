import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int questionIndex;

  Quiz(
      {required this.questions,
      required this.answerQuestions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestions(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
