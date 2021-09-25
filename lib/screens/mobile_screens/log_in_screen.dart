import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/controllers.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/mobile_screens/input_lec_sec_screen.dart';
import 'package:hti_graduation_project/services/alert_box.dart';
import 'package:hti_graduation_project/services/database.dart';
import 'package:hti_graduation_project/services/light_and_dark_mood.dart';

// ignore: use_key_in_widget_constructors
class MobileLogInScreen extends StatefulWidget {
  @override
  _MobileLogInScreenState createState() => _MobileLogInScreenState();
}

class _MobileLogInScreenState extends State<MobileLogInScreen> {
  DataBase getData = DataBase();
  LightAndDarkMoodSwitch getMoodStatus = LightAndDarkMoodSwitch();
  AlertBox getBox = AlertBox();
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMoodStatus.getMood();
    //kMood.get('mood')
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: true,
      backgroundColor: kMood.get('mood') == false ? kDarkColor:kLightColor,
      body: SafeArea(
        child: Column(
          children: [
            // ///light&dark mode button
            // Padding(
            //   padding: EdgeInsets.only(top: kPadding15,right: kPadding20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       InkWell(
            //         onTap: ()  {
            //           setState(() {
            //             if(kMood.get('mood') == false){
            //               getMoodStatus.updateMood(true);
            //             }else{
            //               getMoodStatus.updateMood(false);
            //             }
            //           });
            //         },
            //         child: CircleAvatar(
            //           radius: 20.0,
            //           backgroundColor: kWhiteColor,
            //           child: Icon(kMood.get('mood') == false?Icons.wb_sunny_outlined:Icons.bedtime,color: kDarkColor,),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            ///logo
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:kMood.get('mood') == false ? const AssetImage('assets/dark.png') :const AssetImage('assets/light.png'),
                ),
              ),
            ),
            ///content
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: kPadding20,
                    right: kPadding20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///email title
                      Row(
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              color: kMood.get('mood') == false? kWhiteColor:kBlackColor,
                              fontSize: kSize19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      /// email text field
                      Padding(
                        padding: EdgeInsets.only(top: kPadding15),
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextField(
                            controller: kEmailController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: kPadding20)),
                          ),
                        ),
                      ),

                      ///password title
                      Padding(
                        padding: EdgeInsets.only(top: kPadding25),
                        child: Row(
                          children: [
                            Text(
                              'Password',
                              style: TextStyle(
                                color: kMood.get('mood') == false? kWhiteColor:kBlackColor,
                                fontSize: kSize19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      /// password text field
                      Padding(
                        padding: EdgeInsets.only(top: kPadding15),
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextField(
                            obscureText: kCheckButtonMobileLogInShowPassword == false ?true:false,
                            obscuringCharacter: '*',
                            controller: kPasswordController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: kPadding20)),
                          ),
                        ),
                      ),

                      /// show password
                      Padding(
                        padding:  EdgeInsets.only(top: kPadding15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ///check box and title
                            // ignore: sized_box_for_whitespace
                            Container(
                              height:MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.06,
                              child: Checkbox(
                                  value: kCheckButtonMobileLogInShowPassword,
                                  onChanged: (change) {
                                    setState(() {
                                      kCheckButtonMobileLogInShowPassword = change!;
                                      // ignore: avoid_print
                                      print(kCheckButtonMobileLogInShowPassword);
                                    });
                                  }),
                            ),
                            const SizedBox(width: 10.0,),
                            Text(
                              'Show Password',
                              style: TextStyle(
                                color: kMood.get('mood') == false? kWhiteColor:kBlackColor,
                                fontSize: kSize16,
                              ),
                            ),
                            const Spacer(flex: 1,),
                            // /// forget password
                            // Text(
                            //   'Forget Password',
                            //   style: TextStyle(
                            //     color: kBlueColor,
                            //     fontSize: kSize16,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      ///log in button
                      Padding(
                        padding:  EdgeInsets.only(top:kPadding20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: MaterialButton(
                                  onPressed: (){
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileLectureAndSectionInputScreen()));
                                    if(
                                        kEmailController.text == '' ||
                                        kPasswordController.text == ''){
                                      kMessage = 'Please make sure that all of the fields are filled';
                                      getBox.alertBox(context, kMessage.toString());
                                    }
                                    else{
                                      // getData.createUser(kEmailController.text, kPasswordController.text, context);
                                      getData.logIn(kEmailController.text, kPasswordController.text, context);
                                    }
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: kBlackColor,
                                      fontSize: kSize18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      /// HTI name
                      //const Spacer(flex: 1,),
                      const SizedBox(height: 50.0,),
                      Padding(
                        padding:  EdgeInsets.only(bottom: kPadding15),
                        child: Center(
                          child: Text(
                            'Higher Technological Institute',
                            style: TextStyle(
                              color: kMood.get('mood') == false? kWhiteColor:kBlackColor,
                              fontSize: kSize19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



