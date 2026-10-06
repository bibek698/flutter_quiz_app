import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset('assets/images/quiz-logo.png', width: 200, height: 200),
         SizedBox(height: 20,),
        
         Text('Learn Flutter the fun way!',
         
         style: TextStyle(
           
          color: Colors.white,
          fontSize: 24,
         ),
         ),
         SizedBox(height: 20,),
         OutlinedButton(onPressed: (){}, child: Text('Start Quiz', style: TextStyle(color: Colors.white),),),


      ],)
      
      ),

    )

  ));
}