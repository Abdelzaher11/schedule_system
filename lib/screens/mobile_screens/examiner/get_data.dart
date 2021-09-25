

// ignore: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/services/database.dart';

// ignore: use_key_in_widget_constructors
class MobileViewExaminerData extends StatefulWidget {

  @override
  _MobileViewExaminerDataState createState() => _MobileViewExaminerDataState();
}

class _MobileViewExaminerDataState extends State<MobileViewExaminerData> {
  DataBase getData = DataBase();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData.getExamsData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMood.get('mood') == false ? kDarkColor : kLightColor,
      appBar: AppBar(
        backgroundColor: kMood.get('mood') == false ? kDarkColor : kLightColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(kPadding20),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: MediaQuery.of(context).size.height*0.15,
              decoration: BoxDecoration(
                color: kMood.get('mood') == false ? kDarkColor : kLightColor,
                border: Border.all(color: kMood.get('mood') == false ? kLightColor:kDarkColor,width: 1.5),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(kPadding10),
                child: Row(
                  children: [
                    /// room number
                    Column(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundColor:
                            kMood.get('mood') == false ?kWhiteColor:kBlackColor,
                            child: Text('M${getMidtermExaminerData['hall_number']}',
                              style: TextStyle(
                                color: kMood.get('mood') == false ? kBlackColor:kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ///subject name
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ///subject name
                          Padding(
                            padding: EdgeInsets.all(kPadding10),
                            child: Text(
                              '${getMidtermExaminerData['subject_name']}',
                              style: TextStyle(
                                color: kMood.get('mood') == false ? kWhiteColor:kBlackColor,
                                fontSize: kSize16,
                                letterSpacing: 0.6,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // /// group number
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text(
                    //       'G1',
                    //       style: TextStyle(
                    //         color: kMood.get('mood') == false ?kWhiteColor:kBlackColor,
                    //         fontSize: kSize16,
                    //         letterSpacing: 0.6,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

