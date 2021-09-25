import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/web_screens/input_exam/final_exam_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/input_exam/midterm_exam_screen.dart';
import 'package:hti_graduation_project/widgets/custom_drawer.dart';

// ignore: use_key_in_widget_constructors
class WebExamMenuScreen extends StatefulWidget {
  @override
  _WebExamMenuScreenState createState() => _WebExamMenuScreenState();
}

class _WebExamMenuScreenState extends State<WebExamMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kModeChange == false ? kDarkColor:kLightColor,
      appBar: AppBar(
        backgroundColor: kModeChange == false ? kDarkColor:kLightColor,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.only(top: kPadding25,left: kPadding25,right:kPadding25 ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///title
              const Spacer(flex: 1,),
              Text(
                'Menu',
                style: TextStyle(
                  color: kModeChange == false ? kWhiteColor:kDarkColor,
                  fontSize: kSize20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ///button list
              const Spacer(flex: 1,),
              // ignore: sized_box_for_whitespace
              Container(
                height: MediaQuery.of(context).size.height*0.50,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: MediaQuery.of(context).size.width*0.50,
                decoration: BoxDecoration(
                  color: kModeChange == false ? kDarkColor:kLightColor,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: kModeChange == false ? kLightColor: kDarkColor, width: 1.1,),
                ),
                child: Padding(
                  padding: EdgeInsets.all(kPadding15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ///midterm
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> WebMidtermExamPreparation(),
                          ));
                        },
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          height: MediaQuery.of(context).size.height*0.08,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: kModeChange == false ? kLightColor:kDarkColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(flex: 1,),
                              Text(
                                "Midterm Exam",
                                style: TextStyle(
                                  color: kModeChange == false ? kBlackColor:kWhiteColor,
                                  fontSize: kSize18,
                                ),
                              ),
                              const Spacer(flex: 1,),
                              Padding(
                                padding:  EdgeInsets.only(right: kPadding15),
                                child: Icon(Icons.arrow_forward_ios,color:kModeChange == false ? kBlackColor:kWhiteColor ,),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ///final
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>WebFinalExamPreparation(),
                          ));
                        },
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          height: MediaQuery.of(context).size.height*0.08,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: kModeChange == false ? kLightColor:kDarkColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(flex: 1,),
                              Text(
                                "Final Exam",
                                style: TextStyle(
                                  color: kModeChange == false ? kBlackColor:kWhiteColor,
                                  fontSize: kSize18,
                                ),
                              ),
                              const Spacer(flex: 1,),
                              Padding(
                                padding:  EdgeInsets.only(right: kPadding15),
                                child: Icon(Icons.arrow_forward_ios,color:kModeChange == false ? kBlackColor:kWhiteColor ,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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