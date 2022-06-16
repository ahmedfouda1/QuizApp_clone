import 'package:flutter/material.dart';
import 'dart:core';

class Answer extends StatelessWidget {
final String answerText;
final Function()? x;


Answer( this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      child: ElevatedButton(
        child: Text(answerText,style: TextStyle(fontSize: 25,),),
        onPressed: x,
      ),
    );
  }
}
