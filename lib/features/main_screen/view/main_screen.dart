import 'package:flutter/material.dart';
import 'package:quizapp_clone/core/shared_widgets/custom_appbar.dart';
import 'package:quizapp_clone/core/utilis/app_colors.dart';
import 'package:quizapp_clone/core/utilis/app_texts.dart';
import 'package:quizapp_clone/features/main_screen/data/lists/question_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  int questionIndex=0;
  plusQuestionIndex(){
    if(questionIndex < questionsAndAnswers.length-1)
    {
      questionIndex++;
      setState(() {});
      print(questionIndex);
      print(questionsAndAnswers.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace:const CustomAppBar(
          appName: AppTexts.appName,
        ),
        toolbarHeight: size.height*0.11 ,
      ),
      drawer: const Drawer(),
      body:Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: size.height*0.120),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  questionsAndAnswers[questionIndex].question!,
                  style:const TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: (){
                  plusQuestionIndex();
                },
                child:Text("Click"))
          ],
        ),
    );
  }
}
