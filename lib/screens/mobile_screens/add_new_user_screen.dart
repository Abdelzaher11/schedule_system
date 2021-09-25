import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/controllers.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/services/alert_box.dart';
import 'package:hti_graduation_project/services/database.dart';

// ignore: use_key_in_widget_constructors
class MobileAddNewUserScreen extends StatefulWidget {
  @override
  _MobileAddNewUserScreenState createState() => _MobileAddNewUserScreenState();
}

class _MobileAddNewUserScreenState extends State<MobileAddNewUserScreen> {
  AlertBox getBox = AlertBox();
  DataBase getData = DataBase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMood.get('mood') == false ? kDarkColor:kLightColor,
      appBar: AppBar(
        backgroundColor: kMood.get('mood') == false ? kDarkColor:kLightColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(kPadding15),
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
                  controller: kNewUserEmailController,
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
                  controller: kNewUserPasswordController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: kPadding20)),
                ),
              ),
            ),
            /// remember me & forget password
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
                        value: kCheckButtonMobileAddUserShowPassword,
                        onChanged: (change) {
                          setState(() {
                            kCheckButtonMobileAddUserShowPassword = change!;
                            // ignore: avoid_print
                            print(kCheckButtonMobileAddUserShowPassword);
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
            const Spacer(flex: 1,),
            ///add user button
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
                            getData.createUser(kEmailController.text, kPasswordController.text, context);
                          }
                        },
                        child: Text(
                          'Add User',
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
            const Spacer(flex: 1,),
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
    );
  }
}
