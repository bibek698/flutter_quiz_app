import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummaryData(){

    final List<Map<String, Object>> summary = [];

    for(var i = 0; i < choosenAnswer.length; i++){
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswer[i],
      });
    }
    return summary;

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, //use as much widht as you can
      child: Container(
        margin: EdgeInsets.all(40),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out Y questions correctly!'),
            SizedBox(height: 30,),
            Text('List of answers and questions'),
            SizedBox(height: 30,),
            TextButton(onPressed: (){}, child: Text('restart quiz'))

            
          ],
         )),
    );
  }
}
