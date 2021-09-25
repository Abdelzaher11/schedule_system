import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/mobile_screens/input_exam/final_exam_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/input_exam/midterm_exam_screen.dart';

// ignore: use_key_in_widget_constructors
class MidtermFinalMenuScreen extends StatefulWidget {
  @override
  _MidtermFinalMenuScreenState createState() => _MidtermFinalMenuScreenState();
}

class _MidtermFinalMenuScreenState extends State<MidtermFinalMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kMood.get('mood') == false ? kDarkColor:kLightColor,
      appBar: AppBar(
        backgroundColor: kMood.get('mood') == false ? kDarkColor:kLightColor,
        elevation: 0.0,
      ),
      body: SafeArea(
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
                    ///midterm exam
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> MobileMidtermExamPreparation(),
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
                              "Midterm Exam",
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
                    ///final exam
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>MobileFinalExamPreparation(),
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
                              "Final Exam",
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
    );
  }
}
