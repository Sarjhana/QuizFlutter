import 'package:flutter/material.dart';

import './answer.dart';
import './ques.dart';

class Quiz extends StatelessWidget {

  final List<Map<String,Object>>quest;
  final Function answerQuestion;
  final int quesIndex;

  Quiz({
    @required this.quest,
    @required this.answerQuestion, 
    @required this.quesIndex
    });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        Ques(
          quest[quesIndex]['questionText']
          ),
        ...(quest[quesIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']),answer['text']);
        }).toList()
      ],);
  }
}