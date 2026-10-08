import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {

var currentQuestionIndex = 0;

void answerQuestion (String selectedAnswer){
  widget.onSelectAnswer(selectedAnswer);
  setState(() {
    currentQuestionIndex++;
  });
}

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

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
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),  
            SizedBox(height: 30),
           ...currentQuestion.getShuffledAnswers().map((answer){
            return Answer(answerText: answer, onTap: (){
              answerQuestion(answer);
            });
           })
          ],
        ),
      ),
    );
  }
}
