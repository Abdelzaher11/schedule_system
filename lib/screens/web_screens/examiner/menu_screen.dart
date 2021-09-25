// ignore: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/web_screens/examiner/final_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/examiner/midterm_screen.dart';
import 'package:hti_graduation_project/services/database.dart';
import 'package:hti_graduation_project/widgets/custom_drawer.dart';

// ignore: use_key_in_widget_constructors
class WebExaminerMenuScreen extends StatefulWidget {
  @override
  _WebExaminerMenuScreenState createState() => _WebExaminerMenuScreenState();
}

class _WebExaminerMenuScreenState extends State<WebExaminerMenuScreen> {
  DataBase getData = DataBase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kModeChange == false ? kDarkColor:kLightColor,
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: kModeChange == false ? kDarkColor:kLightColor,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(child: Column()),
            Expanded(
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
                        color: kModeChange == false ? kWhiteColor:kDarkColor,
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
                          ///midterm
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=> WebExaminerMidtermScreen(),
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
                                    "Midterm Schedule",
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
                                builder: (context)=>WebExaminerFinalScreen(),
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
                                    "Final Schedule",
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
                    const Spacer(flex: 2,),

                  ],
                ),
              ),
            ),
            Expanded(child: Column()),

          ],
        ),
      ),
    );
  }
}

