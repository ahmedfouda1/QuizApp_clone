import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int s) aswerQuestion;

  Quiz(this.question, this.questionIndex, this.aswerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question[questionIndex]['questionText'].toString()),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => aswerQuestion(int.parse(answer['Score'].toString())),
              answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
