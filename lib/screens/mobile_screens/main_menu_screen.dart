import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/mobile_screens/input_lec_sec_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/log_in_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/exam_menu_screen.dart';
import 'package:hti_graduation_project/services/database.dart';
import 'package:hti_graduation_project/services/light_and_dark_mood.dart';
import 'package:hti_graduation_project/widgets/custom_drawer.dart';

// ignore: use_key_in_widget_constructors
class MobileMainMenuScreen extends StatefulWidget {
  @override
  _MobileMainMenuScreenState createState() => _MobileMainMenuScreenState();
}

class _MobileMainMenuScreenState extends State<MobileMainMenuScreen> {
  DataBase getData = DataBase();
  LightAndDarkMoodSwitch getMoodStatus = LightAndDarkMoodSwitch();
  Future<bool> onBackPress() {
    return _alertBox();
  }
  _alertBox(){
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('You are going to Logout!!'),
            actions: <Widget>[
              MaterialButton(
                child: const Text('NO'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              MaterialButton(
                child: const Text('YES'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> MobileLogInScreen(),
                  ));
                },
              ),
            ],
          );
        });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMoodStatus.getMood();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kMood.get('mood') == false ? kDarkColor:kLightColor,
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: kMood.get('mood') == false ? kDarkColor:kLightColor,
        elevation: 0.0,
      ),
      body: WillPopScope(
        onWillPop: onBackPress,
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.only(top: kPadding25,left: kPadding25,right:kPadding25 ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///title
                const Spacer(flex: 1,),
                Text(
                  'Menu',
                  style: TextStyle(
                    color: kMood.get('mood') == false ? kWhiteColor:kDarkColor,
                    fontSize: kSize20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ///button list
                const Spacer(flex: 1,),
                // ignore: sized_box_for_whitespace
                Container(
                  height: MediaQuery.of(context).size.height*0.40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ///course
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> MobileLectureAndSectionInputScreen(),
                          ));
                        },
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          height: MediaQuery.of(context).size.height*0.08,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: kMood.get('mood') == false ? kLightColor:kDarkColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(flex: 1,),
                              Text(
                                  "Course Schedule",
                                style: TextStyle(
                                  color: kMood.get('mood') == false ? kBlackColor:kWhiteColor,
                                  fontSize: kSize18,
                                ),
                              ),
                              const Spacer(flex: 1,),
                              Padding(
                                padding:  EdgeInsets.only(right: kPadding15),
                                child: Icon(Icons.arrow_forward_ios,color:kMood.get('mood') == false ? kBlackColor:kWhiteColor ,),
                              ),
                            ],
                          ),
                        ),
                      ),
                     ///exam
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>MidtermFinalMenuScreen(),
                          ));
                        },
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          height: MediaQuery.of(context).size.height*0.08,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: kMood.get('mood') == false ? kLightColor:kDarkColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(flex: 1,),
                              Text(
                                "Exam's Schedule",
                                style: TextStyle(
                                  color: kMood.get('mood') == false ? kBlackColor:kWhiteColor,
                                  fontSize: kSize18,
                                ),
                              ),
                              const Spacer(flex: 1,),
                              Padding(
                                padding:  EdgeInsets.only(right: kPadding15),
                                child: Icon(Icons.arrow_forward_ios,color:kMood.get('mood') == false ? kBlackColor:kWhiteColor ,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 2,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

