import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;

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
