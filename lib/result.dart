import 'package:flutter/material.dart';


class Result extends StatelessWidget {

  final int resultScore;
  final Function resethandler;

  Result(this.resultScore,this.resethandler);

  String get resultPhrase{
    String resultText;
    if(resultScore<10){
      resultText = 'You lost';
    }
    else{
      resultText = 'Your score is : '+resultScore.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
           Container(
             width: double.infinity,
             margin: EdgeInsets.only(left: 50,right: 50,top: 80,bottom: 70),
             child: Text(resultPhrase,
             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
             ),
           ),
           RaisedButton(
             child: Text('Restart Quiz'), 
             textColor: Colors.black,
             onPressed: resethandler,
             color: Colors.grey,
             ),
         ],
       )
    );
  }
}