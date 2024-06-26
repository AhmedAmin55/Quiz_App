import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp_clone/core/shared_widgets/container_for_media.dart';
import 'package:quizapp_clone/core/shared_widgets/custom_textformfield.dart';
import 'package:quizapp_clone/core/utilis/app_colors.dart';
import 'package:quizapp_clone/core/utilis/app_images.dart';
import 'package:quizapp_clone/core/utilis/app_texts.dart';
import 'package:quizapp_clone/features/main_screen/view/main_screen.dart';
import 'package:quizapp_clone/features/signup/view/signup_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              SizedBox(
                height: size.height*0.05,
              ),
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
                hintText: AppTexts.hintEmail,
                keyboardType: TextInputType.emailAddress,
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
                height: size.height*0.01,
              ),
              GestureDetector(
               onTap: (){},
               child: const Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    AppTexts.forgotYourPassword,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
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
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return const MainScreen();
                  }));
                },
                child:const Text(
                  AppTexts.login,
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
              const CustomContainerForMedia(
                  logo: AppImages.googleIcon,
                  text: AppTexts.continueWithGoogle),
              SizedBox(
                height: size.height*0.04,
              ),
              const CustomContainerForMedia(
                  logo: AppImages.facebookIcon,
                  text: AppTexts.continueWithFacebook),
              SizedBox(
                height: size.height*0.02,
              ),
              SizedBox(
                height: size.height*0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      AppTexts.haveNotSignedUpYet,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const SignupPage();
                      }));
                      },
                      child: const Text(
                        AppTexts.createAnAccount,
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
