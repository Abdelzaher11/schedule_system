import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/mobile_screens/log_in_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/log_in_screen.dart';
import 'package:hti_graduation_project/services/database.dart';
import 'package:hti_graduation_project/services/light_and_dark_mood.dart';
import 'package:universal_platform/universal_platform.dart';

// ignore: use_key_in_widget_constructors
class MobileSplashScreen extends StatefulWidget {
  @override
  _MobileSplashScreenState createState() => _MobileSplashScreenState();
}

class _MobileSplashScreenState extends State<MobileSplashScreen> {
  DataBase getData = DataBase();
  LightAndDarkMoodSwitch getMoodStatus = LightAndDarkMoodSwitch();
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMoodStatus.getMood();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: kMood.get('mood') == false ? 'assets/dark.png':'assets/light.png',
      nextScreen: MobileLogInScreen(),
      backgroundColor: kMood.get('mood') == false ? kDarkColor:kLightColor,
      splashIconSize: 500.0,
      animationDuration: const Duration(seconds: 10),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}


