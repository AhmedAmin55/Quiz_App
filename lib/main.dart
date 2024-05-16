
import 'package:flutter/material.dart';
import 'package:quizapp_clone/features/splash/view/splash_screen.dart';

main(){
  runApp(QuizApp());
}
class QuizApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachScreen(),
    );
  }


}