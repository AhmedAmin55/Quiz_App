import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp_clone/core/utilis/app_images.dart';
import 'package:quizapp_clone/features/login/view/login_screen.dart';

import '../../../core/utilis/app_colors.dart';


class SplachScreen extends StatefulWidget{

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState(){
    Future.delayed(Duration(
      seconds: 3,
    ),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return loginApp();
      }));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child:Image.asset(AppImages.splashUp),
          ),
          Spacer(),
          BounceInDown(
            child: Image.asset(
              AppImages.logo,
              width:size.width*0.50 ,
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child:Image.asset(AppImages.splashDown),
          )
        ],
      ),
    );
  }
}