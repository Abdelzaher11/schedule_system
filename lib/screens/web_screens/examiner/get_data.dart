

// ignore: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/services/database.dart';

// ignore: use_key_in_widget_constructors
class WebViewExaminerData extends StatefulWidget {

  @override
  _WebViewExaminerDataState createState() => _WebViewExaminerDataState();
}

class _WebViewExaminerDataState extends State<WebViewExaminerData> {
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
      backgroundColor: kModeChange == false ? kDarkColor : kLightColor,
      appBar: AppBar(
        backgroundColor: kModeChange == false ? kDarkColor : kLightColor,
        elevation: 0.0,
      ),
      body: Row(
        children: [
          Expanded(child: Column()),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(kPadding20),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    //width: MediaQuery.of(context).size.width*0.35,
                    height: MediaQuery.of(context).size.height*0.15,
                    decoration: BoxDecoration(
                      color: kModeChange == false ? kDarkColor : kLightColor,
                      border: Border.all(color: kModeChange == false ? kLightColor:kDarkColor,width: 1.5),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(kPadding10),
                      child: Row(
                        children: [
                          /// room number
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor:
                                  kModeChange == false ?kWhiteColor:kBlackColor,
                                  child: Text('M${getMidtermExaminerData['hall_number']}',
                                    style: TextStyle(
                                      color: kModeChange == false ? kBlackColor:kWhiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ///subject name
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ///subject name
                                Padding(
                                  padding: EdgeInsets.all(kPadding10),
                                  child: Text(
                                    '${getMidtermExaminerData['subject_name']}',
                                    style: TextStyle(
                                      color: kModeChange == false ? kWhiteColor:kBlackColor,
                                      fontSize: kSize16,
                                      letterSpacing: 0.6,
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
                ],
              ),
            ),
          ),
          Expanded(child: Column()),
        ],
      ),
    );
  }

}

