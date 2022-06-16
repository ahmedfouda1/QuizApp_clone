import 'package:flutter/material.dart';
import 'package:quizeapp_clone/main.dart';

class Result extends StatelessWidget {

 final Function() Q;
 final int resultScore;

  Result(this.Q,this.resultScore);

  String get resultPhrase{
    String resultText;
    if(resultScore>=70){
      resultText = 'You are awesome !';
    }else if(resultScore>=40){
      resultText = 'Pretty likable!';
    }else{
      resultText = 'You are so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Done!",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: b),
        ),
        Text(
          "Total Score = $resultScore",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: b),
        ),
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: b),
        ),
        TextButton(
            onPressed: Q ,
            child: Text(
              'Restart The App',
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ))
      ],
    ));
  }
}
