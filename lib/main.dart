//import 'package:first_app/result.dart';
import 'package:flutter/material.dart';


import './quiz.dart';
import './result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  _MyAppState createState() => _MyAppState();
 
}

class _MyAppState extends State<MyApp> {
  
  final _quest = const [
      { 
        'questionText': 'Monica briefly dates billionaire Pete Becker. Which country does he take her for their first date?',
        'answers': [
          {'text':'France', 'score':0}, 
          {'text':'Rome', 'score':10},
          {'text':'Greece','score':0},
          {'text':'England','score':0}],
      },
      { 
        'questionText': 'What/’s Joey’s penguin’s name?',
        'answers': [
          {'text':'Snowflake','score':0},
          {'text':'Huggsy', 'score':10},
          {'text': 'Waddle','score':0}],
      },
      { 
        'questionText': 'How many categories for towels does Monica have?',
        'answers': [
          {'text':'12','score':0},
          {'text': '10','score':0},
          {'text': '11','score':10}],
      },
      { 
        'questionText': 'What color is the couch that the friends sit on at Central Perk?',
        'answers': [
          {'text':'Blue','score':0},
          {'text':'Brown', 'score':0},
          {'text': 'Orange','score':10},
          {'text': 'White','score':0}],
      },
      { 
        'questionText': 'Whose dialogue is this : "Did my back hurt your knife"',
        'answers': [
          {'text':'Ross','score':0},
          {'text':'Monica', 'score':0},
          {'text': 'Rachel','score':10},
          {'text': 'Pheobe','score':0}],
      },
      ];
    var _quesIndex = 0;
    var _totalScore =0;

  void _resetQuiz(){
    
    setState(() {
       _quesIndex = 0;
    _totalScore = 0;
    });
   
  }

  void _answerQuestion(int score){

    _totalScore+=score;    
    setState(() {
      _quesIndex = _quesIndex + 1;
    });
     print(_quesIndex);

      if(_quesIndex < _quest.length)
        {
          print('We have more questions');
        }
        else{
          print('No more questions');
        }
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('F.R.I.E.N.D.S QUIZ'),),
      body: _quesIndex < _quest.length ? 
      Quiz(
        answerQuestion: _answerQuestion, 
        quesIndex: _quesIndex,
        quest: _quest,        
      )
      : Result(_totalScore,_resetQuiz),
    ),
    );
  }
}