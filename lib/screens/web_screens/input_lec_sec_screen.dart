import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/controllers.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/services/alert_box.dart';
import 'package:hti_graduation_project/services/check.dart';
import 'package:hti_graduation_project/services/database.dart';
import 'package:hti_graduation_project/services/excel/cancellation.dart';
import 'package:hti_graduation_project/services/excel/create_excel_sheet.dart';
import 'package:hti_graduation_project/services/excel/insert.dart';
import 'package:hti_graduation_project/services/switch_cases/available_halls.dart';
import 'package:hti_graduation_project/services/switch_cases/lecture_section_duration_switch_case.dart';
import 'package:hti_graduation_project/widgets/sized_box.dart';

// ignore: use_key_in_widget_constructors
class WebLectureAndSectionInputScreen extends StatefulWidget {
  @override
  _WebLectureAndSectionInputScreenState createState() => _WebLectureAndSectionInputScreenState();
}

class _WebLectureAndSectionInputScreenState extends State<WebLectureAndSectionInputScreen> {
  ExcelSheet getExcel = ExcelSheet();
  DataBase getData = DataBase();
  Insert insertData = Insert();
  Cancellation cancelData = Cancellation();
  CheckClass getRoom = CheckClass();
  AlertBox getBox = AlertBox();
  LectureSectionDurationSwitchCase getCase = LectureSectionDurationSwitchCase();
  AvailableRooms availableRoomsClass = AvailableRooms();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getData.getSubjectsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kModeChange == false ? kDarkColor : kLightColor,
      appBar: AppBar(
        backgroundColor: kModeChange == false ? kDarkColor : kLightColor,
        //title: Text(widget.title),
        //automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top:kPadding20,left: kPadding20, right: kPadding20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///entering data
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///first column
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.all(kPadding10),
                      child: Column(
                        children: [
                          /// department field
                          Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
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
                                        value: kDepartmentValue,
                                        iconSize: 30,
                                        icon: (null),
                                        style: TextStyle(
                                          color: kMood.get('mood') == false
                                              ? kWhiteColor
                                              : kBlackColor,
                                          fontSize: kSize16,
                                        ),
                                        hint: Text(
                                          'Select Department',
                                          style: TextStyle(
                                            color: kMood.get('mood') == false
                                                ? kWhiteColor
                                                : kBlackColor,
                                          ),
                                        ),
                                        onChanged: (newValue) {
                                          setState(() {
                                            kDepartmentValue = newValue;
                                          });
                                        },
                                        items: kDepartmentList.map((item) {
                                          return DropdownMenuItem(
                                            child: Text(
                                              item,
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

                          /// subject field
                          Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              color: kMood.get('mood') == false ? kBlackColor : kWhiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              style: TextStyle(
                                color: kMood.get('mood') == false ? kWhiteColor : kBlackColor,
                              ),
                              controller: kSubjectController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Subject',
                                hintStyle: TextStyle(
                                  color: kMood.get('mood') == false ? kWhiteColor : kBlackColor,
                                ),
                                contentPadding: EdgeInsets.only(left: kPadding20),
                              ),
                            ),
                          ),
                          SizedBoxWidget(),

                          /// subject code field
                          Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              color: kMood.get('mood') == false ? kBlackColor : kWhiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              style: TextStyle(
                                color: kMood.get('mood') == false ? kWhiteColor : kBlackColor,
                              ),
                              controller: kSubjectCodeController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Subject Code',
                                hintStyle: TextStyle(
                                  color: kMood.get('mood') == false ? kWhiteColor : kBlackColor,
                                ),
                                contentPadding: EdgeInsets.only(left: kPadding20),
                              ),
                            ),
                          ),
                          SizedBoxWidget(),

                          /// number of students
                          Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              color: kMood.get('mood') == false ? kBlackColor : kWhiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                color: kMood.get('mood') == false ? kWhiteColor : kBlackColor,
                              ),
                              controller: kNumberOfStudentsController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Number Of Students',
                                hintStyle: TextStyle(
                                  color: kMood.get('mood') == false ? kWhiteColor : kBlackColor,
                                ),
                                contentPadding: EdgeInsets.only(left: kPadding20),
                              ),
                            ),
                          ),
                          SizedBoxWidget(),


                          /// Group number
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
                                        value: kGroupNumberValue,
                                        iconSize: 30,
                                        icon: (null),
                                        style: TextStyle(
                                          color: kMood.get('mood') == false
                                              ? kWhiteColor
                                              : kBlackColor,
                                          fontSize: kSize16,
                                        ),
                                        hint: Text(
                                          'Select Group Number',
                                          style: TextStyle(
                                            color: kMood.get('mood') == false
                                                ? kWhiteColor
                                                : kBlackColor,
                                          ),
                                        ),
                                        onChanged: (newValue) {
                                          var kInt = int.parse(kNumberOfStudentsController.text);
                                          var title;
                                          if(kInt >= 40 && kInt < 50){
                                            title = 'first case';
                                          }else if (kInt < 40){
                                            title = 'second case';
                                          }else if (kInt >= 50){
                                            title = 'third case';
                                          }else{
                                            print('plz check the number');
                                          }
                                          availableRoomsClass.lectureHallSwitch(title.toString());
                                          setState(() {
                                            kGroupNumberValue = newValue;
                                          });
                                        },
                                        items: kGroupNumberList.map((item) {
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

                          /// lecture hall selection field
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
                                        value: kHallLecturesValue,
                                        iconSize: 30,
                                        icon: (null),
                                        style: TextStyle(
                                          color: kMood.get('mood') == false
                                              ? kWhiteColor
                                              : kBlackColor,
                                          fontSize: kSize16,
                                        ),
                                        hint: Text(
                                          'Select Lecture Hall',
                                          style: TextStyle(
                                            color: kMood.get('mood') == false
                                                ? kWhiteColor
                                                : kBlackColor,
                                          ),
                                        ),
                                        onChanged: (newValue) {
                                          setState(() {
                                            kHallLecturesValue = newValue;
                                          });
                                        },
                                        items: kHallLecturesList.map((item) {
                                          return DropdownMenuItem(
                                            child: Text(
                                              item,
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

                        ],
                      ),
                    ),
                  ),
                  ///second column
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.all(kPadding10),
                      child: Column(
                        children: [
                          ///lecture day and time


                          ///lecture day
                          Container(
                            decoration: BoxDecoration(
                              color: kMood.get('mood') == false ? kBlackColor : kWhiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),                child: Row(
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
                                      value: kLectureDay,
                                      iconSize: 30,
                                      icon: (null),
                                      style: TextStyle(
                                        color: kMood.get('mood') == false
                                            ? kWhiteColor
                                            : kBlackColor,
                                        fontSize: kSize16,
                                      ),
                                      hint: Text(
                                        'Select Lecture Day',
                                        style: TextStyle(
                                          color: kMood.get('mood') == false
                                              ? kWhiteColor
                                              : kBlackColor,
                                        ),
                                      ),
                                      onChanged: (newValue) {
                                        setState(() {
                                          kLectureDay = newValue;
                                        });
                                      },
                                      items: kLectureDaysList.map((item) {
                                        return DropdownMenuItem(
                                          child: Text(
                                            item,
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

                          /// lecture time
                          Container(
                            decoration: BoxDecoration(
                              color: kMood.get('mood') == false ? kBlackColor : kWhiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),                child: Row(
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
                                      value: kLectureTime,
                                      iconSize: 30,
                                      icon: (null),
                                      style: TextStyle(
                                        color: kMood.get('mood') == false
                                            ? kWhiteColor
                                            : kBlackColor,
                                        fontSize: kSize16,
                                      ),
                                      hint: Text(
                                        'Select Lecture Time',
                                        style: TextStyle(
                                          color: kMood.get('mood') == false
                                              ? kWhiteColor
                                              : kBlackColor,
                                        ),
                                      ),
                                      onChanged: (newValue) {
                                        setState(() {
                                          kLectureTime = newValue;
                                        });
                                      },
                                      items: kLectureDurationList.map((item) {
                                        return DropdownMenuItem(
                                          child: Text(
                                            item,
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

                          /// section hall selection field
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
                                        value: kHallSectionValue,
                                        iconSize: 30,
                                        icon: (null),
                                        style: TextStyle(
                                          color: kMood.get('mood') == false
                                              ? kWhiteColor
                                              : kBlackColor,
                                          fontSize: kSize16,
                                        ),
                                        hint: Text(
                                          'Select Section Hall',
                                          style: TextStyle(
                                            color: kMood.get('mood') == false
                                                ? kWhiteColor
                                                : kBlackColor,
                                          ),
                                        ),
                                        onChanged: (newValue) {
                                          setState(() {
                                            kHallSectionValue = newValue;
                                          });
                                        },
                                        items: kHallSectionList.map((item) {
                                          return DropdownMenuItem(
                                            child: Text(
                                              item,
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

                          ///section day and time

                          ///section day
                          Container(
                            decoration: BoxDecoration(
                              color: kMood.get('mood') == false ? kBlackColor : kWhiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),                child: Row(
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
                                      value: kSectionDay,
                                      iconSize: 30,
                                      icon: (null),
                                      style: TextStyle(
                                        color: kMood.get('mood') == false
                                            ? kWhiteColor
                                            : kBlackColor,
                                        fontSize: kSize16,
                                      ),
                                      hint: Text(
                                        'Select Section Day',
                                        style: TextStyle(
                                          color: kMood.get('mood') == false
                                              ? kWhiteColor
                                              : kBlackColor,
                                        ),
                                      ),
                                      onChanged: (newValue) {
                                        setState(() {
                                          kSectionDay = newValue;
                                        });
                                      },
                                      items: kSectionDaysList.map((item) {
                                        return DropdownMenuItem(
                                          child: Text(
                                            item,
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

                          /// section time
                          Container(
                            decoration: BoxDecoration(
                              color: kMood.get('mood') == false ? kBlackColor : kWhiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),                child: Row(
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
                                      value: kSectionTime,
                                      iconSize: 30,
                                      icon: (null),
                                      style: TextStyle(
                                        color: kMood.get('mood') == false
                                            ? kWhiteColor
                                            : kBlackColor,
                                        fontSize: kSize16,
                                      ),
                                      hint: Text(
                                        'Select Section Time',
                                        style: TextStyle(
                                          color: kMood.get('mood') == false
                                              ? kWhiteColor
                                              : kBlackColor,
                                        ),
                                      ),
                                      onChanged: (newValue) {
                                        setState(() {
                                          kSectionTime = newValue;
                                        });
                                      },
                                      items: kSectionDurationList.map((item) {
                                        return DropdownMenuItem(
                                          child: Text(
                                            item,
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              ///insert button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    height: MediaQuery.of(context).size.height*0.05,
                    width: MediaQuery.of(context).size.width*0.3,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        if(kDepartmentValue == 'Computer Science'){
                          if (kDepartmentValue == null ||
                              kSubjectController.text == '' ||
                              kSubjectCodeController.text == '' ||
                              kNumberOfStudentsController.text == '' ||
                              kLectureDay == null ||
                              kLectureTime == null ||
                              kSectionDay == null ||
                              kSectionTime == null ||
                              kGroupNumberValue == null ||
                              kHallLecturesValue == null ||
                              kHallSectionValue == null) {
                            // ignore: avoid_print
                            //print('error V1');
                            kMessage = 'Please make sure to fill all of the fields';
                            getBox.alertBox(context,kMessage.toString());
                          } else {
                            getCase.lectureDurationSwitchCase(kLectureTime.toString());
                            getCase.sectionDurationSwitchCase(kSectionTime.toString());
                            if (kGroupNumberValue == '1') {
                              insertData.sheet1InsertLecturesAlgorithm();
                              // ignore: avoid_print
                              print('first step is done');
                              print('status = $kLectureAndSectionCheck');
                              if (kLectureAndSectionCheck == true) {
                                insertData.sheet1InsertSectionAlgorithm();
                                // ignore: avoid_print
                                print('second step is done');
                                //getRoom.checkRooms();
                                // ignore: avoid_print
                                print('third step is done');
                                // ignore: avoid_print
                                print('group = Done $kGroupNumberValue');
                                // ignore: avoid_print
                                print('fourth step is done');
                                getData.addSubject(
                                    kSubjectController.text,
                                    kSubjectCodeController.text,
                                    kGroupNumberValue.toString(),
                                    kNumberOfStudentsController.text);
                                // msg is error delete lecture time else print done//
                                if (kMessage == 'overlapped') {
                                  //reverse//
                                  cancelData
                                      .sheet1LecturesCancellationAlgorithm();
                                  // delete firebase//
                                  getData.deleteSubject(kSubjectController.text,
                                      kSubjectCodeController.text);
                                  kMessage = 'Overlapped';
                                  getBox.alertBox(context, kMessage.toString());
                                  // ignore: avoid_print
                                  print('its okay');
                                } else {
                                  //print done//
                                  // ignore: avoid_print
                                  kMessage = 'Subject Added Successfully';
                                  getBox.alertBox(context, kMessage.toString());
                                  print('Done');
                                }
                              }else{
                                print('error');
                                kMessage = 'Overlapped';
                                getBox.alertBox(context, kMessage.toString());
                              }
                            }
                            else if (kGroupNumberValue == '2') {
                              insertData.sheet2InsertLecturesAlgorithm();
                              if (kLectureAndSectionCheck == true) {
                                insertData.sheet2InsertSectionAlgorithm();
                                getData.addSubject(
                                    kSubjectController.text,
                                    kSubjectCodeController.text,
                                    kGroupNumberValue.toString(),
                                    kNumberOfStudentsController.text);
                                //getRoom.checkRooms();
                                // kMessage = 'Subject Added Successfully';
                                // getBox.alertBox(context, kMessage.toString());
                                // msg is error delete lecture time else print done//
                                if (kMessage == 'overlapped') {
                                  //reverse//
                                  cancelData
                                      .sheet2LecturesCancellationAlgorithm();
                                  //delete firebase//
                                  getData.deleteSubject(kSubjectController.text,
                                      kSubjectCodeController.text);
                                  kMessage = 'Overlapped';
                                  getBox.alertBox(context, kMessage.toString());
                                  print('its okay');
                                } else {
                                  //print done//
                                  kMessage = 'Subject Added Successfully';
                                  getBox.alertBox(context, kMessage.toString());
                                  print('Done');
                                }
                              }else{
                                print('error');
                                kMessage = 'Overlapped';
                                getBox.alertBox(context, kMessage.toString());
                              }
                            }
                            else if (kGroupNumberValue == '3') {
                              insertData.sheet3InsertLecturesAlgorithm();
                              if (kLectureAndSectionCheck == true) {
                                insertData.sheet3InsertSectionAlgorithm();
                                getData.addSubject(
                                    kSubjectController.text,
                                    kSubjectCodeController.text,
                                    kGroupNumberValue.toString(),
                                    kNumberOfStudentsController.text);
                                //getRoom.checkRooms();
                                // kMessage = 'Subject Added Successfully';
                                // getBox.alertBox(context, kMessage.toString());
                                // msg is error delete lecture time else print done//
                                if (kMessage == 'overlapped') {
                                  //reverse//
                                  cancelData
                                      .sheet3LecturesCancellationAlgorithm();
                                  // delete firebase//
                                  getData.deleteSubject(kSubjectController.text,
                                      kSubjectCodeController.text);
                                  kMessage = 'Overlapped';
                                  getBox.alertBox(context, kMessage.toString());
                                  print('its okay');
                                } else {
                                  //print done//
                                  kMessage = 'Subject Added Successfully';
                                  getBox.alertBox(context, kMessage.toString());
                                  print('Done');
                                }
                              }else{
                                print('error');
                                kMessage = 'Overlapped';
                                getBox.alertBox(context, kMessage.toString());
                              }
                            }
                            else if (kGroupNumberValue == '4') {
                              insertData.sheet4InsertLecturesAlgorithm();
                              if (kLectureAndSectionCheck == true) {
                                insertData.sheet4InsertSectionAlgorithm();
                                getData.addSubject(
                                    kSubjectController.text,
                                    kSubjectCodeController.text,
                                    kGroupNumberValue.toString(),
                                    kNumberOfStudentsController.text);
                                //getRoom.checkRooms();
                                // kMessage = 'Subject Added Successfully';
                                // getBox.alertBox(context, kMessage.toString());
                                // msg is error delete lecture time else print done//
                                if (kMessage == 'overlapped') {
                                  //reverse//
                                  cancelData
                                      .sheet4LecturesCancellationAlgorithm();
                                  // delete firebase//
                                  getData.deleteSubject(kSubjectController.text,
                                      kSubjectCodeController.text);
                                  kMessage = 'Overlapped';
                                  getBox.alertBox(context, kMessage.toString());
                                  print('its okay');
                                } else {
                                  //print done//
                                  kMessage = 'Subject Added Successfully';
                                  getBox.alertBox(context, kMessage.toString());
                                  print('Done');
                                }
                              }else{
                                print('error');
                                kMessage = 'Overlapped';
                                getBox.alertBox(context, kMessage.toString());
                              }
                            }
                            else if (kGroupNumberValue == '5') {
                              insertData.sheet5InsertLecturesAlgorithm();
                              if (kLectureAndSectionCheck == true) {
                                insertData.sheet5InsertSectionAlgorithm();
                                getData.addSubject(
                                    kSubjectController.text,
                                    kSubjectCodeController.text,
                                    kGroupNumberValue.toString(),
                                    kNumberOfStudentsController.text);
                                //getRoom.checkRooms();
                                // kMessage = 'Subject Added Successfully';
                                // getBox.alertBox(context, kMessage.toString());
                                // msg is error delete lecture time else print done//
                                if (kMessage == 'overlapped') {
                                  //reverse//
                                  cancelData
                                      .sheet5LecturesCancellationAlgorithm();
                                  // delete firebase//
                                  getData.deleteSubject(kSubjectController.text,
                                      kSubjectCodeController.text);
                                  kMessage = 'Overlapped';
                                  getBox.alertBox(context, kMessage.toString());
                                  print('its okay');
                                } else {
                                  //print done//
                                  kMessage = 'Subject Added Successfully';
                                  getBox.alertBox(context, kMessage.toString());
                                  print('Done');
                                }
                              }else{
                                print('error');
                                kMessage = 'Overlapped';
                                getBox.alertBox(context, kMessage.toString());
                              }
                            }
                            else if (kGroupNumberValue == '6') {
                              insertData.sheet6InsertLecturesAlgorithm();
                              if (kLectureAndSectionCheck == true) {
                                insertData.sheet6InsertSectionAlgorithm();
                                getData.addSubject(
                                    kSubjectController.text,
                                    kSubjectCodeController.text,
                                    kGroupNumberValue.toString(),
                                    kNumberOfStudentsController.text);
                                //getRoom.checkRooms();
                                // kMessage = 'Subject Added Successfully';
                                // getBox.alertBox(context, kMessage.toString());
                                // msg is error delete lecture time else print done//
                                if (kMessage == 'overlapped') {
                                  //reverse//
                                  cancelData
                                      .sheet6LecturesCancellationAlgorithm();
                                  // delete firebase//
                                  getData.deleteSubject(kSubjectController.text,
                                      kSubjectCodeController.text);
                                  kMessage = 'Overlapped';
                                  getBox.alertBox(context, kMessage.toString());
                                  print('its okay');
                                } else {
                                  //print done//
                                  kMessage = 'Subject Added Successfully';
                                  getBox.alertBox(context, kMessage.toString());
                                  print('Done');
                                }
                              }else{
                                print('error');
                                kMessage = 'Overlapped';
                                getBox.alertBox(context, kMessage.toString());
                              }
                            }
                            // for (index = 0;
                            // index < kSubjectInformationList.length;
                            // index++) {
                            //   kHallCheck.add(kSubjectInformationList[index]['hall_number']);
                            //   kLectureDayCheck.add(kSubjectInformationList[index]['lecture_day']);
                            //   kLectureDurationCheck.add(kSubjectInformationList[index]['lecture_time']);
                            //   kSectionDayCheck.add(kSubjectInformationList[index]['section_day']);
                            //   kSectionDurationCheck.add(kSubjectInformationList[index]['section_time']);
                            //   if (
                            //   kLectureDayCheck.contains(kLectureDay.toString()) &&
                            //       kLectureDurationCheck.contains(kLectureTime.toString())&&
                            //       kSectionDayCheck.contains(kSectionDay.toString()) &&
                            //       kSectionDurationCheck.contains(kSectionTime.toString()) &&
                            //       kHallCheck.contains(kHallValue.toString())
                            //   ) {
                            //     print('Yes in the list');
                            //   } else {
                            //     print('NO its not in the list');
                            //     addSubject(
                            //         kDepartmentValue.toString(),
                            //         kSubjectController.text,
                            //         kSubjectCodeController.text,
                            //         kLectureDay.toString(),
                            //         kLectureTime.toString(),
                            //         kSectionDay.toString(),
                            //         kSectionTime.toString(),
                            //         kGroupNumberValue.toString(),
                            //         kNumberOfStudentsController.text,
                            //         kHallValue.toString());
                            //   }
                            // }
                            kSubjectController.text = '';
                            kSubjectCodeController.text = '';
                            kNumberOfStudentsController.text = '';
                          }
                        }else{
                          getBox.alertBox(context, 'Unsupported Department');
                        }
                        setState(() {
                          kLectureDay = null;
                          kLectureTime = null;
                          kSectionDay = null;
                          kSectionTime = null;
                          kGroupNumberValue = null;
                          kHallLecturesValue = null;
                          kHallSectionValue = null;
                          kLectureAndSectionCheck = false;
                          kDepartmentValue = null;
                          kFirstDurationLectureValue = null;
                          kSecondDurationLectureValue = null;
                          kThirdDurationLectureValue = null;
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

              /// save button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    height: MediaQuery.of(context).size.height*0.05,
                    width: MediaQuery.of(context).size.width*0.3,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        //ifStatementsMethodForLectures();
                        //Test('$kLectureDay','$kLectureTime');
                        //print(kLectureDay);
                        // if(kSwitch == true){
                        //   kSwitch = false;
                        //   createExcel2();
                        // }else{
                        //   createExcel();
                        //   kSwitch = true;
                        // }
                        getExcel.createExcelForLecturesAndSections();
                        // if(kSwitch == false){
                        //  kSwitch = true;
                        //  createExcel();
                        //  print(kSwitch);
                        // }else{
                        //   setState(() {
                        //     sheet2;
                        //   });
                        //   kSwitch = false;
                        //   print(kSwitch);
                        // }
                        //createExcel();

                        // List<String> list = ['tata','toto','titi','tutu','lala','lolo','lili']..shuffle();
                        //
                        // // final random=  Random();
                        // // String item= list[random.nextInt(list.length)];
                        // // // ignore: avoid_print
                        // // print(item);
                        // // list.remove(item);
                        // print(list);
                        // var random1 = list.removeLast();
                        //
                        // var random2 = list.removeLast();
                        //
                        // assert(random1 != random2);
                        // print(random1);
                        // print(list);
                        // print(random2);
                        // print(list);
                      },
                      child: Text(
                        'Save',
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
             
            ],
          ),
        ),
      ),
    );
  }

}