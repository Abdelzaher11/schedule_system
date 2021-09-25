import 'package:hti_graduation_project/constants/controllers.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/services/alert_box.dart';
import 'package:hti_graduation_project/services/database.dart';

DataBase getData = DataBase();
AlertBox getBox = AlertBox();

// ignore: camel_case_types
class CheckClass {
  // Future<void> checkRooms()async {
  //   for (subjectIndex = 0; subjectIndex < kSubjectInformationList.length; subjectIndex++) {
  //     // kLectureHallCheck.add(kSubjectInformationList[subjectIndex]['lecture_hall_number']);
  //     // kLectureDayCheck.add(kSubjectInformationList[subjectIndex]['lecture_day']);
  //     // kLectureFirstDurationCheck.add(kSubjectInformationList[subjectIndex]['first_duration_lecture_time']);
  //     // kLectureFirstDurationCheck.add(kSubjectInformationList[subjectIndex]['second_duration_lecture_time']);
  //     // kLectureFirstDurationCheck.add(kSubjectInformationList[subjectIndex]['third_duration_lecture_time']);
  //     // kSectionDayCheck.add(kSubjectInformationList[subjectIndex]['section_day']);
  //     // kSectionFirstDurationCheck.add(kSubjectInformationList[subjectIndex]['first_duration_section_time']);
  //     // kSectionFirstDurationCheck.add(kSubjectInformationList[subjectIndex]['second_duration_section_time']);
  //     // kSectionHallCheck.add(kSubjectInformationList[subjectIndex]['section_hall_number']);
  //     // print('lec hall = ${kSubjectInformationList[subjectIndex]['lecture_hall_number']}');
  //     // print('lec day = ${kSubjectInformationList[subjectIndex]['lecture_day']}');
  //     // print('lec time = ${kSubjectInformationList[subjectIndex]['first_duration_lecture_time']}');
  //     // print('lec time = ${kSubjectInformationList[subjectIndex]['second_duration_lecture_time']}');
  //     // print('lec time = ${kSubjectInformationList[subjectIndex]['third_duration_lecture_time']}');
  //     // print('sec hall = ${kSubjectInformationList[subjectIndex]['section_day']}');
  //     // print('sec day = ${kSubjectInformationList[subjectIndex]['first_duration_section_time']}');
  //     // print('sec day = ${kSubjectInformationList[subjectIndex]['second_duration_section_time']}');
  //     // print('sec time = ${kSubjectInformationList[subjectIndex]['section_hall_number']}');
  //     //
  //     // print('lecture day  = $kLectureDay');
  //     // print('lecture time = $kLectureTime');
  //     // print('lecture hall = $kHallLecturesValue');
  //     //
  //     // print('section day  = $kSectionDay');
  //     // print('section time = $kSectionTime');
  //     // print('section hall = $kHallSectionValue');
  //     if (kLectureFirstDurationCheck.contains(kFirstDurationLectureValue.toString()) ||
  //         kLectureSecondDurationCheck.contains(kSecondDurationLectureValue.toString()) ||
  //         kSectionFirstDurationCheck.contains(kFirstDurationSectionValue.toString()) ||
  //         kSectionSecondDurationCheck.contains(kSecondDurationSectionValue.toString()) &&
  //             kLectureDayCheck.contains(kLectureDay.toString()) &&
  //             kLectureHallCheck.contains(kHallLecturesValue.toString()) ||
  //         kSectionDayCheck.contains(kSectionDay.toString()) &&
  //         kSectionHallCheck.contains(kHallSectionValue.toString())) {
  //       // ignore: avoid_print
  //       print('Yes in the list');
  //     } else {
  //       // ignore: avoid_print
  //       print('NO its not in the list');
  //       //await check2();
  //       // if( kLectureFirstDurationCheck.contains(kFirstDurationLectureValue.toString()) ||
  //       //     kLectureSecondDurationCheck.contains(kSecondDurationLectureValue.toString()) ||
  //       //     kSectionFirstDurationCheck.contains(kFirstDurationSectionValue.toString()) ||
  //       //     kSectionSecondDurationCheck.contains(kSecondDurationSectionValue.toString()) &&
  //       //         kLectureDayCheck.contains(kLectureDay.toString()) &&
  //       //         kLectureHallCheck.contains(kHallLecturesValue.toString()) ||
  //       //     kSectionDayCheck.contains(kSectionDay.toString()) &&
  //       //         kSectionHallCheck.contains(kHallSectionValue.toString())){
  //       //   // ignore: avoid_print
  //       //   print('section error');
  //       // }else{
  //       //   // getData.addSubject(
  //       //   //     kDepartmentValue.toString(),
  //       //   //     kSubjectController.text,
  //       //   //     kSubjectCodeController.text,
  //       //   //     kLectureDay.toString(),
  //       //   //     kFirstDurationLectureValue.toString(),
  //       //   //     kSecondDurationLectureValue.toString(),
  //       //   //     kThirdDurationLectureValue.toString(),
  //       //   //     kSectionDay.toString(),
  //       //   //     kFirstDurationSectionValue.toString(),
  //       //   //     kSecondDurationSectionValue.toString(),
  //       //   //     kGroupNumberValue.toString(),
  //       //   //     kNumberOfStudentsController.text,
  //       //   //     kHallLecturesValue.toString(),
  //       //   //     kHallSectionValue.toString());
  //       //   // ignore: avoid_print
  //       //   print('added to database');
  //       // }
  //     }
  //   }
  // }
  // void checkExamsRooms(context){
  //   for(examIndex = 0 ; examIndex < kExamsDataList.length ; examIndex++){
  //     kExamDayCheck.add(kExamsDataList[examIndex]['exam_day']);
  //     kExamTimeCheck.add(kExamsDataList[examIndex]['exam_time']);
  //     kExamFirstExaminerCheck.add(kExamsDataList[examIndex]['first_name']);
  //     kExamSecondExaminerCheck.add(kExamsDataList[examIndex]['second_name']);
  //     kExamHallCheck.add(kExamsDataList[examIndex]['hall_number']);
  //
  //     if (kExamDayCheck.contains(kExamDayValue.toString()) &&
  //         kExamTimeCheck.contains(kExamTimeValue.toString()) &&
  //         kExamFirstExaminerCheck.contains(kMidtermFirstNameExaminer.toString()) &&
  //         kExamSecondExaminerCheck.contains(kMidtermSecondNameExaminer.toString()) &&
  //         kExamHallCheck.contains(kExamHallValue.toString())) {
  //       kMessage= 'something wrong';
  //       getBox.alertBox(context, kMessage.toString());
  //     } else {
  //       getData.examsPreparation(
  //           kSubjectExamController.text,
  //           kExamGroupValue.toString(),
  //           kExamTimeValue.toString(),
  //           kExamDayValue.toString(),
  //           kNumberOfStudentsInExamController.text,
  //           kExamHallValue.toString(),
  //           kMidtermFirstNameExaminer.toString(),
  //           kMidtermSecondNameExaminer.toString());
  //       kMessage = 'Done';
  //       getBox.alertBox(context, kMessage.toString());
  //     }
  //   }
  // }

  check2(){
    if( kLectureDayCheck.contains(kLectureDay.toString()) &&
        kLectureFirstDurationCheck.contains(kLectureTime.toString()) &&
        kLectureHallCheck.contains(kHallLecturesValue.toString()) ||
        kSectionDayCheck.contains(kSectionDay.toString()) &&
            kSectionFirstDurationCheck.contains(kSectionTime.toString()) &&
            kSectionHallCheck.contains(kHallSectionValue.toString())){
      // ignore: avoid_print
      print('section error');
    }else{
      // getData.addSubject(
      //     kDepartmentValue.toString(),
      //     kSubjectController.text,
      //     kSubjectCodeController.text,
      //     kLectureDay.toString(),
      //     kLectureTime.toString(),
      //     kSectionDay.toString(),
      //     kSectionTime.toString(),
      //     kGroupNumberValue.toString(),
      //     kNumberOfStudentsController.text,
      //     kHallLecturesValue.toString(),
      //     kHallSectionValue.toString());
      // ignore: avoid_print
      print('added to database');
    }
  }
}
