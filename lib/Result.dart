import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
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
          //
          ElevatedButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF48DFD7),
              onPrimary: Colors.white,
            ),
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text("Reset Quiz"),
            style: TextButton.styleFrom(
              primary: Color.fromARGB(255, 230, 215, 18),
            ),
          ),

          OutlinedButton(
              onPressed: resetHandler,
              child: Text("Reset Quiz"),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 230, 215, 18),
                side: BorderSide(
                    color: Color.fromARGB(255, 233, 224, 205), width: 3),
              )),
        ],
      ),
    );
  }
}
