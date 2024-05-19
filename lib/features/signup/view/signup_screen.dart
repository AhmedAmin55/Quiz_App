import 'package:flutter/material.dart';
import 'package:quizapp_clone/core/utilis/app_colors.dart';
import 'package:quizapp_clone/core/utilis/app_images.dart';
import 'package:quizapp_clone/core/utilis/app_texts.dart';
import 'package:quizapp_clone/features/login/data/shared_widget/custom_textformfield.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Image.asset(AppImages.smallLogo,width: 100),
              SizedBox(
                height: size.height*0.03,
              ),
              const Text(
                AppTexts.welcome,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20
                ),
              ),
              SizedBox(
                height: size.height*0.01,
              ),
              Text(
                AppTexts.note,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.black.withOpacity(0.70),
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                ),
              ),
              SizedBox(
                height: size.height*0.05,
              ),
              const CustomTextField(
                  labelText: AppTexts.email,
                  hintText: AppTexts.hintEmail),
              SizedBox(
                height: size.height*0.03,
              ),
              const CustomTextField(
                  labelText: AppTexts.userName,
                  hintText: AppTexts.hintUserName,
              ),
              const CustomTextField(
                  labelText: AppTexts.password,
                  hintText: AppTexts.hintPassword),
              SizedBox(
                height: size.height*0.03,
              ),
              MaterialButton(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                minWidth: double.infinity,
                height: size.height*0.07,
                color: AppColors.mainColor,
                onPressed: (){},
                child:const Text(
                    AppTexts.signup,
                    style:TextStyle(
                        color: AppColors.white,
                        fontSize: 17
                    )
                ),
              ),
              SizedBox(
                height: size.height*0.02,
              ),
              Text(
                  AppTexts.or,
                  style:TextStyle(
                      fontWeight: FontWeight.w700
                  )
              ),
              SizedBox(
                height: size.height*0.02,
              ),
              Container(
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
                      child: Image.asset(AppImages.googleIcon,width: 30,),
                    ),
                    const Text(
                        AppTexts.continueWithGoogle,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16
                        )
                    )
                  ],
                ) ,
              ),
              SizedBox(
                height: size.height*0.04,
              ),
              Container(
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
                      child: Image.asset(AppImages.facebookIcon,width: 30,),
                    ),
                    const Text(
                        AppTexts.continueWithFacebook,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16
                        )
                    )
                  ],
                ) ,
              ),
              SizedBox(
                height: size.height*0.02,
              ),
            ]
        ),
      ),
      );
  }
}