import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/web_screens/log_in_screen.dart';
import 'package:hti_graduation_project/services/database.dart';

// ignore: use_key_in_widget_constructors
class WebSplashScreen extends StatefulWidget {
  @override
  _MobileSplashScreenState createState() => _MobileSplashScreenState();
}

class _MobileSplashScreenState extends State<WebSplashScreen> {
  DataBase getData = DataBase();
  //LightAndDarkMoodSwitch getMoodStatus = LightAndDarkMoodSwitch();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData.getTeacherAssistantList();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: kModeChange == false? 'assets/dark.png': 'assets/light.png',
      nextScreen: WebLogInScreen(),
      backgroundColor: kDarkColor,
      splashIconSize: 500.0,
      animationDuration: const Duration(seconds: 10),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}