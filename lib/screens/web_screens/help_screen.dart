import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/controllers.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/widgets/sized_box.dart';

// ignore: use_key_in_widget_constructors
class WebHelpGuideScreen extends StatefulWidget {
  @override
  _WebHelpGuideScreenState createState() => _WebHelpGuideScreenState();
}

class _WebHelpGuideScreenState extends State<WebHelpGuideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kModeChange == false ? kDarkColor:kLightColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Help Guide',
          style: TextStyle(
            color: kModeChange == false ?kLightColor:kDarkColor,
          ),
        ),
        backgroundColor: kModeChange == false ? kDarkColor:kLightColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: [
            Expanded(child: Column()),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.all(kPadding15),
                child: Column(
                  children: [
                    ListView.separated(
                      physics:const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: kHelpGuideList.length,
                      separatorBuilder: (context,index)=>Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height*0.0006,
                        color: kModeChange == false ?kLightColor:kDarkColor,
                      ),
                      itemBuilder: (context,index)=>helpList(kHelpGuideList,index),
                    ),
                    SizedBoxWidget(),
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height*0.30,
                      decoration: BoxDecoration(
                        color: kModeChange == false ? kDarkColor:kLightColor,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.red,width: 1.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(kPadding15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '*caution*',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: kSize17,
                                  ),
                                ),
                              ],
                            ),
                            SizedBoxWidget(),
                            Text(
                              'You should insert all of data of each group in one time only before you save it and open the excel sheet or you have another solution you can insert the data of the group then save it and go to the directory of the application (android/data/com.example.scheduling_system/file)and copy the file of the group in another then create a new one with a new group',
                              style: TextStyle(
                                color: kModeChange == false ?kLightColor:kDarkColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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

  Widget helpList(list,index)=>Row(
    children: [
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(kPadding10),
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Text(
              '${list[index]}',
              style: TextStyle(
                color: kModeChange == false ?kLightColor:kDarkColor,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
