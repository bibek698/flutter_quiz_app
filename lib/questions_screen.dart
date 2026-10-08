import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity, //use as much widht as you can
      child: Container(
        margin: EdgeInsets.all(40),
        
        child: Column(spacing: 7.0,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [
            Text(
              currentQuestion.text,
              style: TextStyle(color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),  
            SizedBox(height: 30),
           ...currentQuestion.answers.map((answer){
            return Answer(answerText: answer, onTap: (){});
           })
          ],
        ),
      ),
    );
  }
}
