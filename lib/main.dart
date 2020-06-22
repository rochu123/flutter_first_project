import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  final _questions = const[
    {
      'questionText': 'what is ur fav animal?',
      'answers': [
            {'text':'kidi','score':0},
            {'text':'horse','score':0},
            {'text':'Snake','score':0},
            {'text':'Elephant','score':1}],
    },
    {
      'questionText': 'what is ur fav calor ?',
      'answers': [
            {'text':'orange','score':0},
            {'text':'Green','score':0},
            {'text':'Yellow','score':0},
            {'text':'Blue','score':1}],
    },
    {
      'questionText': 'what is ur fav sports?',
      'answers': [
            {'text':'Cricket','score':1},
            {'text':'Golf','score':0},
            {'text':'Football','score':0},
            {'text':'Rugby','score':0}],
    }
  ];
  var _qi = 0;
  var _totalscore =0;
  void _resetQuiz(){
    setState(() {
      _qi =0;
      _totalscore=0;
    });
  }
  void _answerQuestion(int score) {
    _totalscore+=score;
    setState(() {
      _qi++;
    });
    if (_qi < _questions.length) {
      print("ruko abhi");
    }

    //print(_qi);
    return;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _qi < _questions.length ?
            Quiz(answerQuestion: _answerQuestion,questions:_questions,qi:_qi)
            : Result(_totalscore,_resetQuiz)
        ),
      );
  }
}