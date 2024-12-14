import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it !";
    if (resultScore <= 8) {
      resultText = "You are awesome and great !";
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are .... strange!';
    } else {
      resultText = 'You are not nice';
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
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: resetHandler,
            child: Text(
              'Reset Quiz',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
