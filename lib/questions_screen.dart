import 'package:flutter/material.dart';
import 'answer_button.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{

  @override
  Widget build(context){
    return SizedBox(
      width: double.infinity, //use as much widht as you can
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Questions'),
        SizedBox(height: 30,),
        Answer(answerText: 'answerText', onTap: (){}),
        Answer(answerText: 'answerText', onTap: (){}),
        Answer(answerText: 'answerText', onTap: (){}),
        
      ],
    ),);
  }
}


