import 'package:flutter/material.dart';
import 'package:quizapp_clone/core/utilis/app_colors.dart';
import 'package:quizapp_clone/core/utilis/app_images.dart';
import 'package:quizapp_clone/core/utilis/app_texts.dart';

class CustomContainerForMedia extends StatelessWidget {
  const CustomContainerForMedia({super.key, required this.logo ,required this.text});
   final  String logo;
   final String text;
   @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: AppColors.black.withOpacity(0.50),
            width: 0.4
        ),
        color: AppColors.white,

      ),
      width: double.infinity,
      height: size.height*0.07,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(logo,width: 30,),
          ),
           Text(
              text,
              style:const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16
              )
          )
        ],
      ) ,
    );
  }
}
