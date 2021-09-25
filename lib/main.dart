import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/mobile_screens/input_exam/midterm_exam_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/input_lec_sec_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/log_in_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/main_menu_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/splash_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/examiner/get_data.dart';
import 'package:hti_graduation_project/screens/mobile_screens/examiner/midterm_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/input_lec_sec_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/main_menu_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/splash_screen.dart';
import 'package:hti_graduation_project/services/light_and_dark_mood.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  if (kIsWeb) {
    // Set web-specific directory
  } else {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
  }
  await Hive.openBox('switch');
  //Hive.init(appDocumentDir.path);
  //print('path=${appDocumentDir.path}');
  // ignore: invalid_use_of_visible_for_testing_member
  //SharedPreferences.setMockInitialValues({});
  runApp(MyApp());
}



// ignore: use_key_in_widget_constructors, must_be_immutable
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  LightAndDarkMoodSwitch getMood = LightAndDarkMoodSwitch();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMood.getMood();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: MobileSplashScreen(), kModeChange
      // ignore: unnecessary_null_comparison
      //themeMode: mood == false ? ThemeMode.dark : ThemeMode.light,
      //darkTheme: ThemeData.dark(),
      home: FutureBuilder(
        future: Hive.openBox('switch'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              //getMood.addMood(false);
              //getMood.updateMood(false);
              return Text(' error = ${snapshot.error.toString()}');
            } else {
              if(UniversalPlatform.isAndroid || UniversalPlatform.isIOS){
                return MobileSplashScreen();
              }else{
                return WebSplashScreen();
              }
            }
          }
          // Although opening a Box takes a very short time,
          // we still need to return something before the Future completes.
          else {
            if(kMood.get('mood') == null){
              getMood.updateMood(false);
            }else{
            getMood.getMood();}
            return Scaffold(
              backgroundColor: kMood.get('mood') == false ? kDarkColor:kLightColor,
            );
          }
        },
      ),
      //home: TestScreenExaminer(),
      //home: MobileMenuScreen(),
      //home: MobileMidtermExamPreparation(),
      //home:MobileLectureAndSectionInputScreen(),
      //home: App(),
      //home: GetExamsData(),
      //home: LogInScreen(),
    );
  }
}

