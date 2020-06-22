import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>>questions;
  final int qi;
  final Function answerQuestion;
  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.qi});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
    Question(questions[qi]['questionText'],),
// print(qi);
...(questions[qi]['answers'] as List<Map<String,Object>>).map((answer) {
return Answer(() =>answerQuestion(answer['score']), answer['text']);
}).toList()
],
);
  }
}
