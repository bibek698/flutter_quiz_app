import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswer = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        // selectedAnswer = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget =   ResultsScreen(choosenAnswer: selectedAnswer,);
    }

    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blueGrey,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 10, 66, 90),
                Color.fromARGB(255, 129, 66, 171),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:quiz_app/start_screen.dart';
// import 'package:quiz_app/questions_screen.dart';


// class Quiz extends StatefulWidget{
//   const Quiz({super.key});

//   @override
//   State<Quiz> createState(){
//     return _QuizState();
//   }
// }

// class _QuizState extends State<Quiz>{

//   Widget? activeScreen;

//   @override
//   void initState() {
//     activeScreen = StartScreen(switchScreen);
//     super.initState();
//   }

//   void switchScreen(){
//     setState((){
//       activeScreen = QuestionsScreen();
//     });
//   }

//   @override
//   Widget build(context){
//     return MaterialApp(
//       home: Scaffold(
//         // backgroundColor: Colors.blueGrey,
//         body: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 10, 66, 90),
//                 Color.fromARGB(255, 129, 66, 171),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: activeScreen,
//         ),
//       ),
//     );
//   }
// }