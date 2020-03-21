import 'package:flutter/material.dart';


class Ques extends StatelessWidget {

 final String quesText;

  Ques(this.quesText);
  @override
  Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 15,right: 15,top: 30,bottom: 60),
        child: Text(
          quesText, 
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
      ),);
      
  }
}