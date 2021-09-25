// ignore: use_key_in_widget_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/web_screens/main_menu_screen.dart';
import 'package:hti_graduation_project/services/light_and_dark_mood.dart';

// ignore: use_key_in_widget_constructors
class WebSettingsScreen extends StatefulWidget {
  @override
  _WebSettingsScreenState createState() => _WebSettingsScreenState();
}

class _WebSettingsScreenState extends State<WebSettingsScreen> {
  LightAndDarkMoodSwitch getMoodStatus = LightAndDarkMoodSwitch();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kModeChange == false ? kDarkColor:kLightColor,
      appBar: AppBar(
        backgroundColor: kModeChange == false ? kDarkColor:kLightColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> WebMainMenuScreen(),)
              );
            },
            child: const Icon(Icons.arrow_back_sharp)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(kPadding15),
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    'Light Mode',
                    style: TextStyle(
                      color: kModeChange == false ?kLightColor:kDarkColor,
                      fontSize: kSize16,
                    ),
                  ),
                  title: CupertinoSwitch(
                    value: kModeChange,
                    onChanged: (value){
                      setState(() {
                        kModeChange = value;
                      });
                      // setState(() {
                      //   if(kModeChange == false){
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
        ],
      ),
    );
  }
}