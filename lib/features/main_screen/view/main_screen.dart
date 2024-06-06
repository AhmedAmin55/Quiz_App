import 'package:flutter/material.dart';
import 'package:quizapp_clone/core/shared_widgets/custom_appbar.dart';
import 'package:quizapp_clone/core/utilis/app_texts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
      body: Column(
        children: [

        ],
      ),
    );
  }
}
