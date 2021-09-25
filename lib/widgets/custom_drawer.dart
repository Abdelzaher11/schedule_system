import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/mobile_screens/add_new_user_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/help_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/settings_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/add_new_user_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/help_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/settings_screen.dart';
import 'package:hti_graduation_project/services/database.dart';
import 'package:hti_graduation_project/services/detect_platform.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class CustomDrawer extends StatefulWidget {
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  DataBase getData = DataBase();
  DetectPlatformClass detect = DetectPlatformClass();
  mobileDrawer(){
    return Drawer(
      child: kEmailPreference == 'admin@hti.edu.eg'?Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: kMood.get('mood') == false ? kDarkColor:kLightColor,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 1,),
              /// help button
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>MobileHelpGuideScreen(),
                  ));
                },
                leading: Icon(
                  Icons.help,
                  color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Help',
                  style: TextStyle(
                    color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
                  ),
                ),
              ),
              ///setting button
              ListTile(
                onTap: (){
                  detect.detectPlatform(context, MobileSettingsScreen(), WebSettingsScreen());
                },
                leading: Icon(
                  Icons.settings,
                  color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
                  ),
                ),
              ),
              ///add new button
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> MobileAddNewUserScreen(),)
                  );
                },
                leading: Icon(
                  Icons.person_add_alt,
                  color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Add New Account',
                  style: TextStyle(
                    color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
                  ),
                ),
              ),
              const Spacer(flex: 6,),
              ///log out button
              ListTile(
                onTap: (){
                  getData.logOut(context);
                },
                leading: Icon(
                  Icons.logout,
                  color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
                  ),
                ),
              ),
              const Spacer(flex: 2,),
            ],
          ),
        ),
      ):Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: kMood.get('mood') == false ? kDarkColor:kLightColor,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 1,),
              ///setting button
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> MobileSettingsScreen(),)
                  );
                },
                leading: Icon(
                  Icons.settings,
                  color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
                  ),
                ),
              ),
              const Spacer(flex: 6,),
              ///log out button
              ListTile(
                onTap: (){
                  getData.logOut(context);
                },
                leading: Icon(
                  Icons.logout,
                  color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: kMood.get('mood') == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
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
  webDrawer(){
    return Drawer(
      child: kEmailPreference == 'admin@hti.edu.eg'?Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: kModeChange == false ? kDarkColor:kLightColor,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 1,),
              /// help button
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>WebHelpGuideScreen(),
                  ));
                },
                leading: Icon(
                  Icons.help,
                  color: kModeChange == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Help',
                  style: TextStyle(
                    color: kModeChange == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
                  ),
                ),
              ),
              ///setting button
              ListTile(
                onTap: (){
                  detect.detectPlatform(context, MobileSettingsScreen(), WebSettingsScreen());
                },
                leading: Icon(
                  Icons.settings,
                  color: kModeChange == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: kModeChange == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
                  ),
                ),
              ),
              ///add new button
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> WebAddNewUserScreen(),)
                  );
                },
                leading: Icon(
                  Icons.person_add_alt,
                  color: kModeChange == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Add New Account',
                  style: TextStyle(
                    color: kModeChange == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
                  ),
                ),
              ),
              const Spacer(flex: 6,),
              ///log out button
              ListTile(
                onTap: (){
                  getData.logOut(context);
                },
                leading: Icon(
                  Icons.logout,
                  color: kModeChange == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: kModeChange == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
                  ),
                ),
              ),
              const Spacer(flex: 2,),

            ],
          ),
        ),
      ):Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: kModeChange == false ? kDarkColor:kLightColor,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 1,),
              ///setting button
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> MobileSettingsScreen(),)
                  );
                },
                leading: Icon(
                  Icons.settings,
                  color: kModeChange == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: kModeChange == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
                  ),
                ),
              ),
              const Spacer(flex: 6,),
              ///log out button
              ListTile(
                onTap: (){
                  getData.logOut(context);
                },
                leading: Icon(
                  Icons.logout,
                  color: kModeChange == false ?kLightColor:kDarkColor,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: kModeChange == false ?kLightColor:kDarkColor,
                    fontSize: kSize16,
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
  @override
  Widget build(BuildContext context) {
    return detect.detectPlatformDrawer(context,mobileDrawer(),webDrawer());
  }
}
