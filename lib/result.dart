import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 class Result extends StatelessWidget {
  @override
  final int resultScore;
   final Function resetHandler;
  Result(this.resultScore,this.resetHandler);
  String get resultPhrase{
    String resultText ;
    if(resultScore==3){
      resultText='You are awesome mate';
    }
    else if(resultScore==2){
      resultText='can improve';
    }
    else{
      resultText='must improve';
    }
    return resultText;
  }
  Widget build(BuildContext context) {
    return Center(
      child:Column(
      children:<Widget> [
        Text(
        resultPhrase,
        style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      FlatButton(
        child: Text('Restart Quiz'),
        onPressed: resetHandler,
        textColor: Colors.red,
      ),
      ],
      ),
    );
  }
}
