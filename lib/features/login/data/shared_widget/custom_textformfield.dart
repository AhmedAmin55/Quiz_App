import 'package:flutter/material.dart';
import 'package:quizapp_clone/core/utilis/app_colors.dart';
import 'package:quizapp_clone/core/utilis/app_texts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.labelText,required this.hintText,required this.keyboardType});
  final labelText;
  final hintText;
  final keyboardType;
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return SizedBox(
      height: size.height*0.07,
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: AppColors.black.withOpacity(0.70),width: 0.2)
          ),
          labelText: labelText,
          labelStyle: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500
          ),
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: AppColors.black.withOpacity(0.70),width: 0.2)
          ),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
