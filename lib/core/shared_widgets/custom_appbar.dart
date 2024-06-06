import 'package:flutter/material.dart';
import 'package:quizapp_clone/core/utilis/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.appName});
  final String appName;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration:const BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(35),
            bottomLeft: Radius.circular(35)
        )
      ) ,
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Text(
          appName,
          style:const TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
    );
  }
}
