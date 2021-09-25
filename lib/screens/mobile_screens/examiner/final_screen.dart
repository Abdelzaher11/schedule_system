import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/services/alert_box.dart';
import 'package:hti_graduation_project/services/database.dart';
import 'package:hti_graduation_project/widgets/custom_drawer.dart';
import 'package:hti_graduation_project/widgets/sized_box.dart';

// ignore: use_key_in_widget_constructors
class MobileExaminerFinalScreen extends StatefulWidget {
  @override
  _MobileExaminerMidtermScreenState createState() => _MobileExaminerMidtermScreenState();
}

class _MobileExaminerMidtermScreenState extends State<MobileExaminerFinalScreen> {
  DataBase getData = DataBase();
  AlertBox getBox = AlertBox();
  var k = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMood.get('mood') == false ? kDarkColor : kLightColor,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: kMood.get('mood') == false ? kDarkColor : kLightColor,

      body: Padding(
        padding: EdgeInsets.all(kPadding15),
        child: Column(
          children: [
            ///exam time
            SizedBoxWidget(),
            Container(
              decoration: BoxDecoration(
                color: kMood.get('mood') == false ? kBlackColor : kWhiteColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
                          dropdownColor: kMood.get('mood') == false
                              ? kBlackColor
                              : kWhiteColor,
                          value: kExaminerFinalExamTimeValue,
                          iconSize: 30,
                          icon: (null),
                          style: TextStyle(
                            color: kMood.get('mood') == false
                                ? kWhiteColor
                                : kBlackColor,
                            fontSize: kSize16,
                          ),
                          hint: Text(
                            'Select Exam Time',
                            style: TextStyle(
                              color: kMood.get('mood') == false
                                  ? kWhiteColor
                                  : kBlackColor,
                            ),
                          ),
                          onChanged: (newValue) {
                            setState(() {
                              kExaminerFinalExamTimeValue = newValue;
                            });
                          },
                          items: kMidtermExamDurationPeriodList.map((item) {
                            return DropdownMenuItem(
                              child: Text(
                                item.toString(),
                              ),
                              value: item.toString(),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///exam day
            SizedBoxWidget(),
            Container(
              decoration: BoxDecoration(
                color: kMood.get('mood') == false ? kBlackColor : kWhiteColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
                          dropdownColor: kMood.get('mood') == false
                              ? kBlackColor
                              : kWhiteColor,
                          value: kExaminerFinalExamDayValue,
                          iconSize: 30,
                          icon: (null),
                          style: TextStyle(
                            color: kMood.get('mood') == false
                                ? kWhiteColor
                                : kBlackColor,
                            fontSize: kSize16,
                          ),
                          hint: Text(
                            'Select Exam Day',
                            style: TextStyle(
                              color: kMood.get('mood') == false
                                  ? kWhiteColor
                                  : kBlackColor,
                            ),
                          ),
                          onChanged: (newValue) {
                            setState(() {
                              kExaminerFinalExamDayValue = newValue;
                            });
                          },
                          items: kExamDayList.map((item) {
                            return DropdownMenuItem(
                              child: Text(
                                item.toString(),
                              ),
                              value: item.toString(),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///view button
            const Spacer(flex: 1,),
            SizedBoxWidget(),
            ///view button
            Row(
              children: [
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        if(kExaminerFinalExamTimeValue == null ||
                            kExaminerFinalExamDayValue == null ||
                            kEmailPreference == null
                        )
                        {
                         getBox.alertBox(context, 'please make sure that all data is filled');
                        }else{
                        getData.checkFinalExaminerCategory(
                            kEmailPreference.toString(),
                            kExaminerFinalExamTimeValue.toString(),
                            kExaminerFinalExamDayValue.toString(),context);
                        setState(() {
                          kExaminerFinalExamTimeValue = null;
                          kExaminerFinalExamDayValue = null;
                        });}
                      },
                      child: Text(
                        'View',
                        style: TextStyle(
                          color: kBlackColor,
                          fontSize: kSize17,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}