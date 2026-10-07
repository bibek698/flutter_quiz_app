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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),  
          SizedBox(height: 30),
          Answer(answerText: currentQuestion.answers[0], onTap: () {}),
          SizedBox(height: 20),
          Answer(answerText: currentQuestion.answers[1], onTap: () {}),
          SizedBox(height: 20),
          Answer(answerText: currentQuestion.answers[2], onTap: () {}),
          SizedBox(height: 20),
           Answer(answerText: currentQuestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
