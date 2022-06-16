import 'package:flutter/material.dart';
import 'package:quizeapp_clone/screens/answer.dart';
import 'package:quizeapp_clone/screens/question.dart';
import 'package:quizeapp_clone/screens/quiz.dart';
import 'package:quizeapp_clone/screens/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
Color w = Colors.white;
Color b = Colors.black;
class _MyAppState extends State<MyApp> {

  bool isSwitched = false;

  int _totalScore =0;
  int _questionIndex = 0;

  void _resultQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void aswerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s you favorite color?',
      'answers': [
        {'text':'Black','Score':10},
        {'text':'Green','Score':20},
        {'text':'Blue','Score':30},
        {'text':'Yellow','Score':40},
      ],
    },
    {
      'questionText': 'What\'s you favorite animal?',
      'answers': [
        {'text':'Rabbit','Score':10},
        {'text':'Tiger','Score':20},
        {'text':'Elephant','Score':30},
        {'text':'Lion','Score':40},
      ],
    },
    {
      'questionText': 'What\'s you favorite instructor?',
      'answers': [
        {'text':'mohamed','Score':10},
        {'text':'abdo','Score':20},
        {'text':'Jamal','Score':30},
        {'text':'ahmed','Score':40},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          actions: [
            Switch(value: isSwitched, onChanged: (value){
              setState(() {
                isSwitched =value;
                print(isSwitched);
                if(isSwitched ==true){
                  b =Colors.white;
                  w =Colors.black;
                }
                if(isSwitched ==false){
                b =Colors.black;
                w =Colors.white;
                }
              });
            }),
          ],
        ),
        body: Container(
          color: w,
          child: _questionIndex < _question.length
              ? Quiz(_question, _questionIndex, aswerQuestion)
              : Result(_resultQuiz,_totalScore),
        ),
      ),
    );
  }
}
