import 'package:flutter/material.dart';
import 'package:quizapp_clone/core/shared_widgets/container_for_media.dart';
import 'package:quizapp_clone/core/shared_widgets/custom_textformfield.dart';
import 'package:quizapp_clone/core/utilis/app_colors.dart';
import 'package:quizapp_clone/core/utilis/app_images.dart';
import 'package:quizapp_clone/core/utilis/app_texts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                SizedBox(
                  height: size.height*0.05,
                ),
                Image.asset(AppImages.smallLogo,width: 100),
                SizedBox(
                  height: size.height*0.03,
                ),
                const Text(
                  AppTexts.welcomeSignup,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20
                  ),
                ),
                SizedBox(
                  height: size.height*0.01,
                ),
                Text(
                  AppTexts.noteSignup,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.black.withOpacity(0.70),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
                SizedBox(
                  height: size.height*0.02,
                ),
                const CustomTextField(
                  labelText: AppTexts.email,
                  hintText: AppTexts.hintEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: size.height*0.03,
                ),
                const CustomTextField(
                  labelText: AppTexts.userName,
                  hintText: AppTexts.hintUserName,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: size.height*0.03,
                ),
                const CustomTextField(
                  labelText: AppTexts.password,
                  hintText: AppTexts.hintPassword,
                  keyboardType: TextInputType.visiblePassword,
                ),
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
                const Text(
                    AppTexts.or,
                    style:TextStyle(
                        fontWeight: FontWeight.w700
                    )
                ),
                SizedBox(
                  height: size.height*0.02,
                ),
                CustomContainerForMedia(logo: AppImages.googleIcon, text: AppTexts.continueWithGoogle),
                SizedBox(
                  height: size.height*0.04,
                ),
                CustomContainerForMedia(logo: AppImages.facebookIcon, text: AppTexts.continueWithFacebook),
                SizedBox(
                  height: size.height*0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      AppTexts.alreadyHaveAnAccount,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Text(
                          AppTexts.login,
                          style: TextStyle(
                              color: AppColors.mainColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 13
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ]
          ),
        ),
      ),
      );
  }
}
