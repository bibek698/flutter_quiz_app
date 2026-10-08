import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  const Answer({
    super.key,
    required this.answerText, 
    required this.onTap
    });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        
        
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white
      ),
      child: Text(answerText),
      );
  }
}