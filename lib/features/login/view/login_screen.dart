import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp_clone/core/utilis/app_colors.dart';
import 'package:quizapp_clone/core/utilis/app_images.dart';
import 'package:quizapp_clone/core/utilis/app_texts.dart';

class loginApp extends StatelessWidget {
  const loginApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset(AppImages.smallLogo,width: 100),
            const Text(
              AppTexts.welcome,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20
              ),
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
              height: size.height*0.07,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: AppColors.black.withOpacity(0.70),width: 0.2)
                  ),
                  labelText: AppTexts.email,
                  labelStyle: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500
                  ),
                  hintText: AppTexts.hintEmail,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black.withOpacity(0.80)),
                      borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: size.height*0.07,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: AppColors.black.withOpacity(0.70),width: 0.2)
                  ),
                  labelText: AppTexts.password,
                  labelStyle: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500
                  ),
                  hintText: AppTexts.hintPassword,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: AppColors.black.withOpacity(0.70),width: 0.2)
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
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
            MaterialButton(
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              minWidth: double.infinity,
              height: size.height*0.07,
              color: AppColors.mainColor,
              onPressed: (){},
              child:const Text(
                AppTexts.login,
                style:TextStyle(
                  color: AppColors.white,
                  fontSize: 17
                )
              ),
            ),
            Text(AppTexts.or),
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
            SizedBox(height: 30,),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    AppTexts.haveNotSignedUpYet,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: GestureDetector(
                    onTap: (){},
                    child: Text(
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
    );
  }
}
