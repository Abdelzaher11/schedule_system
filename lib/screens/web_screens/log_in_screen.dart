// ignore: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/controllers.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/mobile_screens/main_menu_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/main_menu_screen.dart';
import 'package:hti_graduation_project/services/database.dart';
import 'package:hti_graduation_project/services/light_and_dark_mood.dart';

// ignore: use_key_in_widget_constructors
class WebLogInScreen extends StatefulWidget {
  @override
  _WebLogInScreenState createState() => _WebLogInScreenState();
}

class _WebLogInScreenState extends State<WebLogInScreen> {
  DataBase getData = DataBase();
  LightAndDarkMoodSwitch getMoodStatus = LightAndDarkMoodSwitch();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kModeChange == false ? kDarkColor:kLightColor,
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
            //             if(kModeChange == false){
            //               kModeChange = true;
            //             }else{
            //               kModeChange = false;
            //             }
            //           });
            //         },
            //         child: CircleAvatar(
            //           radius: 20.0,
            //           backgroundColor: kWhiteColor,
            //           child: Icon(kModeChange == false?Icons.wb_sunny_outlined:Icons.bedtime,color: kDarkColor,),
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
                  image:kModeChange == false? const AssetImage('assets/dark.png'): const AssetImage('assets/light.png'),
                ),
              ),
            ),

            ///content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ///entering data
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      color: kModeChange == false ? kDarkColor: kLightColor,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: kModeChange == false ? kLightColor: kDarkColor, width: 1.1,),
                    ),
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Padding(
                      padding: EdgeInsets.all(kPadding20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ///email title
                          Row(
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                  color: kModeChange == false? kWhiteColor:kBlackColor,
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
                                    color: kModeChange == false? kWhiteColor:kBlackColor,
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
                                obscuringCharacter: '*',
                                obscureText: kCheckButtonWebLogInShowPassword == false ?true:false,
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
                                  child: Checkbox(
                                      value: kCheckButtonWebLogInShowPassword,
                                      onChanged: (change) {
                                        setState(() {
                                          kCheckButtonWebLogInShowPassword = change!;
                                        });
                                      }),
                                ),
                                //const SizedBox(width: 10.0,),
                                Text(
                                  'Show Password',
                                  style: TextStyle(
                                    color: kModeChange == false? kWhiteColor:kBlackColor,
                                    fontSize: kSize16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ///log in button
                          Padding(
                            padding:  EdgeInsets.only(top:kPadding20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height*0.05,
                                  width: MediaQuery.of(context).size.width*0.09,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    color: kWhiteColor,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: MaterialButton(
                                    onPressed: (){
                                      if(
                                      kEmailController.text == '' ||
                                          kPasswordController.text == ''){
                                        kMessage = 'Please make sure that all of the fields are filled';
                                        getBox.alertBox(context, kMessage.toString());
                                      }
                                      else{
                                        // getData.createUser(kEmailController.text, kPasswordController.text, context);
                                        getData.logIn(kEmailController.text, kPasswordController.text, context);
                                        // if(kNewUserEmailController.text.characters.characterAt(2) == '@'){
                                        //   getData.getTestData1(kEmailController.text.characters.characterAt(0));
                                        // }else{
                                        //   getData.getTestData2(
                                        //       kEmailController.text.characters.characterAt(0),
                                        //       kEmailController.text.characters.characterAt(1)
                                        //   );
                                        // }
                                        // var n = kEmailController.text.characters.characterAt(0);
                                        // var k = kEmailController.text.characters.characterAt(1);
                                        // print('k = $k$n');
                                        // kMidtermFirstExaminerNameList.add('${kEmailController.text.characters.characterAt(0)}${kEmailController.text.characters.characterAt(1)}');
                                        // print('k = $kMidtermFirstExaminerNameList');

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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  /// HTI name
                  const Spacer(flex: 1,),
                  Padding(
                    padding:  EdgeInsets.only(bottom: kPadding15),
                    child: Center(
                      child: Text(
                        'Higher Technological Institute',
                        style: TextStyle(
                          color: kModeChange == false? kWhiteColor:kBlackColor,
                          fontSize: kSize19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
