import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/controllers.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/services/alert_box.dart';
import 'package:hti_graduation_project/services/check.dart';
import 'package:hti_graduation_project/services/database.dart';
import 'package:hti_graduation_project/services/excel/create_excel_sheet.dart';
import 'package:hti_graduation_project/services/excel/insert.dart';
import 'package:hti_graduation_project/services/switch_cases/available_halls.dart';
import 'package:hti_graduation_project/widgets/sized_box.dart';

// ignore: use_key_in_widget_constructors
class WebFinalExamPreparation extends StatefulWidget {
  @override
  _WebFinalExamPreparationState createState() => _WebFinalExamPreparationState();
}

class _WebFinalExamPreparationState extends State<WebFinalExamPreparation> {
  AlertBox getBox = AlertBox();
  DataBase getData = DataBase();
  CheckClass getChecked = CheckClass();
  ExcelSheet getExcel = ExcelSheet();
  Insert insertData = Insert();
  AvailableRooms availableRoomsClass = AvailableRooms();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData.getExamsData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //kModeChange
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ///subject code
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        color: kModeChange == false ? kBlackColor : kWhiteColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: kModeChange == false ? kWhiteColor : kBlackColor,
                        ),
                        controller: kFinalSubjectCodeExamController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Subject Code',
                          hintStyle: TextStyle(
                            color: kModeChange == false ? kWhiteColor : kBlackColor,
                          ),
                          contentPadding: EdgeInsets.only(left: kPadding20),
                        ),
                      ),
                    ),
                    SizedBoxWidget(),
                    ///subject name
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        color: kModeChange == false ? kBlackColor : kWhiteColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: kModeChange == false ? kWhiteColor : kBlackColor,
                        ),
                        controller: kFinalSubjectExamController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Subject Name',
                          hintStyle: TextStyle(
                            color: kModeChange == false ? kWhiteColor : kBlackColor,
                          ),
                          contentPadding: EdgeInsets.only(left: kPadding20),
                        ),
                      ),
                    ),
                    SizedBoxWidget(),
                    ///exam time
                    Container(
                      decoration: BoxDecoration(
                        color: kModeChange == false ? kBlackColor : kWhiteColor,
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
                                  dropdownColor: kModeChange == false
                                      ? kBlackColor
                                      : kWhiteColor,
                                  value: kFinalExamTimeValue,
                                  iconSize: 30,
                                  icon: (null),
                                  style: TextStyle(
                                    color: kModeChange == false
                                        ? kWhiteColor
                                        : kBlackColor,
                                    fontSize: kSize16,
                                  ),
                                  hint: Text(
                                    'Select Exam Time',
                                    style: TextStyle(
                                      color: kModeChange == false
                                          ? kWhiteColor
                                          : kBlackColor,
                                    ),
                                  ),
                                  onChanged: (newValue) {
                                    getData.getSubjectsData
                                      (
                                        kFinalSubjectCodeExamController.text,
                                        kFinalSubjectExamController.text
                                    );
                                    setState(() {
                                      kFinalExamTimeValue = newValue;
                                    });
                                  },
                                  items: kFinalExamDurationPeriodList.map((item) {
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
                    SizedBoxWidget(),

                    ///exam day
                    Container(
                      decoration: BoxDecoration(
                        color: kModeChange == false ? kBlackColor : kWhiteColor,
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
                                  dropdownColor: kModeChange == false
                                      ? kBlackColor
                                      : kWhiteColor,
                                  value: kFinalExamDayValue,
                                  iconSize: 30,
                                  icon: (null),
                                  style: TextStyle(
                                    color: kModeChange == false
                                        ? kWhiteColor
                                        : kBlackColor,
                                    fontSize: kSize16,
                                  ),
                                  hint: Text(
                                    'Select Exam Day',
                                    style: TextStyle(
                                      color: kModeChange == false
                                          ? kWhiteColor
                                          : kBlackColor,
                                    ),
                                  ),
                                  onChanged: (newValue) {
                                    var kInt = int.parse(kSubjectInformation['number_of_students']);
                                    var title;
                                    if(kInt >= 40 &&
                                        kInt < 50){
                                      title = 'first case';
                                    }
                                    else if (kInt < 40){
                                      title = 'second case';
                                    }
                                    else if (kInt >= 50){
                                      title = 'third case';
                                    }
                                    else{
                                      print('plz check the number');
                                    }
                                    availableRoomsClass.finalExamHallSwitch(title.toString());
                                    setState(() {
                                      kFinalExamDayValue = newValue;
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
                    SizedBoxWidget(),

                    ///hall number
                    Container(
                      decoration: BoxDecoration(
                        color: kModeChange == false ? kBlackColor : kWhiteColor,
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
                                  dropdownColor: kModeChange == false
                                      ? kBlackColor
                                      : kWhiteColor,
                                  value: kFinalExamHallValue,
                                  iconSize: 30,
                                  icon: (null),
                                  style: TextStyle(
                                    color: kModeChange == false
                                        ? kWhiteColor
                                        : kBlackColor,
                                    fontSize: kSize16,
                                  ),
                                  hint: Text(
                                    'Select Hall Number',
                                    style: TextStyle(
                                      color: kModeChange == false
                                          ? kWhiteColor
                                          : kBlackColor,
                                    ),
                                  ),
                                  onChanged: (newValue) {
                                    setState(() {
                                      kFinalExamHallValue = newValue;
                                    });
                                  },
                                  items: kExamHallList.map((item) {
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
                    SizedBoxWidget(),
                    /// generate button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.15,
                          height: MediaQuery.of(context).size.height*0.05,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              if(kFinalSecondExaminerNameList.isEmpty){
                                kFinalSecondExaminerNameList = [
                                  '20',
                                  '21',
                                  '22',
                                  '23',
                                  '24',
                                  '25',
                                  '26',
                                  '27',
                                  '28',
                                  '29',
                                  '30',
                                ]..shuffle();
                              }else{
                                if(kFinalFirstExaminerNameList.isEmpty){
                                  kMessage = 'There is no more in the list';
                                  getBox.alertBox(context, kMessage.toString());
                                }else{
                                  setState(() {
                                    kFinalFirstNameExaminer = kFinalFirstExaminerNameList.removeLast();
                                    kFinalSecondNameExaminer = kFinalSecondExaminerNameList.removeLast();
                                    // ignore: avoid_print
                                    print(kFinalSecondExaminerNameList);
                                    // ignore: avoid_print
                                    print(kFinalFirstExaminerNameList);
                                    assert(kFinalFirstNameExaminer != kFinalSecondNameExaminer);
                                  });}
                              }
                            },
                            child: Text(
                              'Generate',
                              style: TextStyle(
                                color: kBlackColor,
                                fontSize: kSize17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBoxWidget(),
                    ///names
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.147,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              color: kModeChange == false ? kBlackColor : kWhiteColor,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(
                              child: Text(
                                kFinalFirstNameExaminer == null ?'':kFinalFirstNameExaminer,
                                style: TextStyle(
                                  fontSize: kSize17,
                                  color: kModeChange == false ? kWhiteColor : kBlackColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0,),
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.147,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              color: kModeChange == false ? kBlackColor : kWhiteColor,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(
                              child: Text(
                                kFinalSecondNameExaminer == null ?'':kFinalSecondNameExaminer,
                                style: TextStyle(
                                  fontSize: kSize17,
                                  color: kModeChange == false ? kWhiteColor : kBlackColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBoxWidget(),
                    ///insert button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.15,
                          height: MediaQuery.of(context).size.height*0.05,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              if (
                              kFinalSubjectCodeExamController.text == '' ||
                                  kFinalSubjectExamController.text == '' ||
                                  kFinalExamTimeValue == null ||
                                  kFinalExamDayValue == null ||
                                  kFinalExamHallValue == null ||
                                  kFinalFirstNameExaminer == null ||
                                  kFinalSecondNameExaminer == null
                              ){
                                kMessage = 'please make sure that all fields are filled';
                                getBox.alertBox(context, kMessage.toString());
                              } else {
                                insertData.insertExamExcelSheetData(
                                    kFinalSubjectCodeExamController.text,
                                    kFinalSubjectExamController.text,
                                    kSubjectInformation['number_of_students'],
                                    kFinalExamDayValue.toString(),
                                    kFinalExamTimeValue.toString(),
                                    kFinalExamHallValue.toString(),
                                    kFinalFirstNameExaminer.toString(),
                                    kFinalSecondNameExaminer.toString()
                                );
                                kMessage = 'Done';
                                getBox.alertBox(context, kMessage.toString());
                                examSheetIndex = examSheetIndex + 1 ;
                                getData.finalExaminer1(
                                    kFinalSubjectExamController.text,
                                    kFinalExamTimeValue.toString(),
                                    kFinalExamDayValue.toString(),
                                    kFinalExamHallValue.toString(),
                                    kFinalFirstNameExaminer.toString());
                                getData.finalExaminer2(
                                    kFinalSubjectExamController.text,
                                    kFinalExamTimeValue.toString(),
                                    kFinalExamDayValue.toString(),
                                    kFinalExamHallValue.toString(),
                                    kFinalSecondNameExaminer.toString());
                                // getChecked.checkExamsRooms(context);
                                // getData.examsPreparation(
                                //     kSubjectExamController.text,
                                //     kExamGroupValue.toString(),
                                //     kExamTimeValue.toString(),
                                //     kExamDayValue.toString(),
                                //     kNumberOfStudentsInExamController.text,
                                //     kExamHallValue.toString(),
                                //     kFirstName.toString(),
                                //     kSecondName.toString());
                                // kMessage = 'Done';
                                // getBox.alertBox(context, kMessage.toString());
                                // for(examIndex = 0 ; examIndex < kExamsDataList.length ; examIndex++){
                                //   kExamDayCheck.add(kExamsDataList[examIndex]['exam_day']);
                                //   kExamTimeCheck.add(kExamsDataList[examIndex]['exam_time']);
                                //   kExamFirstExaminerCheck.add(kExamsDataList[examIndex]['first_name']);
                                //   kExamSecondExaminerCheck.add(kExamsDataList[examIndex]['second_name']);
                                //   kExamHallCheck.add(kExamsDataList[examIndex]['hall_number']);
                                //
                                //   if (kExamDayCheck.contains(kExamDayValue.toString()) &&
                                //       kExamTimeCheck.contains(kExamTimeValue.toString()) &&
                                //       kExamFirstExaminerCheck.contains(kFirstName.toString()) &&
                                //       kExamSecondExaminerCheck.contains(kSecondName.toString()) &&
                                //       kExamHallCheck.contains(kExamHallValue.toString())) {
                                //     kMessage= 'something wrong';
                                //     getBox.alertBox(context, kMessage.toString());
                                //   } else {
                                //     getData.examsPreparation(
                                //         kSubjectExamController.text,
                                //         kExamGroupValue.toString(),
                                //         kExamTimeValue.toString(),
                                //         kExamDayValue.toString(),
                                //         kNumberOfStudentsInExamController.text,
                                //         kExamHallValue.toString(),
                                //         kFirstName.toString(),
                                //         kSecondName.toString());
                                //     kMessage = 'Done';
                                //     getBox.alertBox(context, kMessage.toString());
                                //   }
                                // }
                              }
                              kFinalSubjectCodeExamController..text = '';
                              kFinalSubjectExamController..text = '';
                              setState(() {
                                kFinalExamGroupValue = null;
                                kFinalExamTimeValue = null;
                                kFinalExamDayValue = null;
                                kFinalExamHallValue = null;
                                kFinalFirstNameExaminer = null;
                                kFinalSecondNameExaminer = null;
                              });
                            },
                            child: Text(
                              'Insert',
                              style: TextStyle(
                                color: kBlackColor,
                                fontSize: kSize17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBoxWidget(),

                    ///view button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.15,
                          height: MediaQuery.of(context).size.height*0.05,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              getExcel.createExcelForExam();
                              // Navigator.push(context, MaterialPageRoute(
                              //   builder: (context)=> MobileGetExamsData(),
                              // ));
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: Column()),
        ],
      ),
    );
  }
}
