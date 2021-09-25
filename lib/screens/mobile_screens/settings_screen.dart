import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/mobile_screens/main_menu_screen.dart';
import 'package:hti_graduation_project/services/light_and_dark_mood.dart';

// ignore: use_key_in_widget_constructors
class MobileSettingsScreen extends StatefulWidget {
  @override
  _MobileSettingsScreenState createState() => _MobileSettingsScreenState();
}

class _MobileSettingsScreenState extends State<MobileSettingsScreen> {
  LightAndDarkMoodSwitch getMoodStatus = LightAndDarkMoodSwitch();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMood.get('mood') == false ? kDarkColor:kLightColor,
      appBar: AppBar(
        backgroundColor: kMood.get('mood') == false ? kDarkColor:kLightColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> MobileMainMenuScreen(),)
            );
          },
            child: const Icon(Icons.arrow_back_sharp)),
      ),
      body: Padding(
        padding: EdgeInsets.all(kPadding15),
        child: Column(
          children: [
            ListTile(
              leading: Text(
                'Light Mode',
                style: TextStyle(
                  color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                  fontSize: kSize16,
                ),
              ),
              title: CupertinoSwitch(
                value: kMood.get('mood'),
                onChanged: (value){
                  setState(() {
                    getMoodStatus.updateMood(value);
                  });
                  // setState(() {
                  //   if(kMood.get('mood') == false){
                  //     getMoodStatus.updateMood(true);
                  //   }else{
                  //     getMoodStatus.updateMood(false);
                  //   }
                  // });
                },
                //onChanged: toggleSwitch(k),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
