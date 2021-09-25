import 'package:hti_graduation_project/constants/controllers.dart';
import 'package:hti_graduation_project/constants/variables.dart';
class Insert{

  ///sheet 1
  sheet1InsertLecturesAlgorithm() {
    ///----------------------------Lectures-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kLectureDay == 'Saturday' && kLectureTime == '9:00-11:25') {
      if (sheet1.getRangeByName(kSaturday1).text == null &&
          sheet1.getRangeByName(kSaturday2).text == null &&
          sheet1.getRangeByName(kSaturday3).text == null ||
          sheet1.getRangeByName(kSaturday1).text == '' &&
              sheet1.getRangeByName(kSaturday2).text == '' &&
              sheet1.getRangeByName(kSaturday3).text == ''
      ) {
        sheet1.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '11:25-1:05') {
      if (sheet1.getRangeByName(kSaturday4).getText() == null &&
          sheet1.getRangeByName(kSaturday5).getText() == null &&
          sheet1.getRangeByName(kSaturday6).getText() == null ||
          sheet1.getRangeByName(kSaturday4).getText() == '' &&
              sheet1.getRangeByName(kSaturday5).getText() == '' &&
              sheet1.getRangeByName(kSaturday6).getText() == ''

      ) {
        sheet1.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '1:05-3:30') {
      if (sheet1.getRangeByName(kSaturday6).getText() == null &&
          sheet1.getRangeByName(kSaturday7).getText() == null &&
          sheet1.getRangeByName(kSaturday8).getText() == null ||
          sheet1.getRangeByName(kSaturday6).getText() == '' &&
              sheet1.getRangeByName(kSaturday7).getText() == '' &&
              sheet1.getRangeByName(kSaturday8).getText() == ''
      ) {
        sheet1.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Sunday-------------------------------------
    else if (kLectureDay == 'Sunday' && kLectureTime == '9:00-11:25') {
      if (sheet1.getRangeByName(kSunday1).getText() == null &&
          sheet1.getRangeByName(kSunday2).getText() == null &&
          sheet1.getRangeByName(kSunday3).getText() == null ||
          sheet1.getRangeByName(kSunday1).getText() == '' &&
              sheet1.getRangeByName(kSunday2).getText() == '' &&
              sheet1.getRangeByName(kSunday3).getText() == '') {
        sheet1.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '11:25-1:05') {
      if (sheet1.getRangeByName(kSunday4).getText() == null &&
          sheet1.getRangeByName(kSunday5).getText() == null &&
          sheet1.getRangeByName(kSunday6).getText() == null ||
          sheet1.getRangeByName(kSunday4).getText() == '' &&
              sheet1.getRangeByName(kSunday5).getText() == '' &&
              sheet1.getRangeByName(kSunday6).getText() == '') {
        sheet1.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '1:05-3:30') {
      if (sheet1.getRangeByName(kSunday6).getText() == null &&
          sheet1.getRangeByName(kSunday7).getText() == null &&
          sheet1.getRangeByName(kSunday8).getText() == null ||
          sheet1.getRangeByName(kSunday6).getText() == '' &&
              sheet1.getRangeByName(kSunday7).getText() == '' &&
              sheet1.getRangeByName(kSunday8).getText() == '') {
        sheet1.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------

    else if (kLectureDay == 'Monday' && kLectureTime == '9:00-11:25') {
      if (sheet1.getRangeByName(kMonday1).getText() == null &&
          sheet1.getRangeByName(kMonday2).getText() == null &&
          sheet1.getRangeByName(kMonday3).getText() == null ||
          sheet1.getRangeByName(kMonday1).getText() == '' &&
              sheet1.getRangeByName(kMonday2).getText() == '' &&
              sheet1.getRangeByName(kMonday3).getText() == '') {
        sheet1.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '11:25-1:05') {
      if (sheet1.getRangeByName(kMonday4).getText() == null &&
          sheet1.getRangeByName(kMonday5).getText() == null &&
          sheet1.getRangeByName(kMonday6).getText() == null ||
          sheet1.getRangeByName(kMonday4).getText() == '' &&
              sheet1.getRangeByName(kMonday5).getText() == '' &&
              sheet1.getRangeByName(kMonday6).getText() == '') {
        sheet1.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '1:05-3:30') {
      if (sheet1.getRangeByName(kMonday6).getText() == null &&
          sheet1.getRangeByName(kMonday7).getText() == null &&
          sheet1.getRangeByName(kMonday8).getText() == null ||
          sheet1.getRangeByName(kMonday6).getText() == '' &&
              sheet1.getRangeByName(kMonday7).getText() == '' &&
              sheet1.getRangeByName(kMonday8).getText() == '') {
        sheet1.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------

    else if (kLectureDay == 'Tuesday' && kLectureTime == '9:00-11:25') {
      if (sheet1.getRangeByName(kTuesday1).getText() == null &&
          sheet1.getRangeByName(kTuesday2).getText() == null &&
          sheet1.getRangeByName(kTuesday3).getText() == null ||
          sheet1.getRangeByName(kTuesday1).getText() == '' &&
              sheet1.getRangeByName(kTuesday2).getText() == '' &&
              sheet1.getRangeByName(kTuesday3).getText() == '') {
        sheet1.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '11:25-1:05') {
      if (sheet1.getRangeByName(kTuesday4).getText() == null &&
          sheet1.getRangeByName(kTuesday5).getText() == null &&
          sheet1.getRangeByName(kTuesday6).getText() == null ||
          sheet1.getRangeByName(kTuesday4).getText() == '' &&
              sheet1.getRangeByName(kTuesday5).getText() == '' &&
              sheet1.getRangeByName(kTuesday6).getText() == '') {
        sheet1.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '1:05-3:30') {
      if (sheet1.getRangeByName(kTuesday6).getText() == null &&
          sheet1.getRangeByName(kTuesday7).getText() == null &&
          sheet1.getRangeByName(kTuesday8).getText() == null ||
          sheet1.getRangeByName(kTuesday6).getText() == '' &&
              sheet1.getRangeByName(kTuesday7).getText() == '' &&
              sheet1.getRangeByName(kTuesday8).getText() == '') {
        sheet1.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------

    else if (kLectureDay == 'Wednesday' && kLectureTime == '9:00-11:25') {
      if (sheet1.getRangeByName(kWednesday1).getText() == null &&
          sheet1.getRangeByName(kWednesday2).getText() == null &&
          sheet1.getRangeByName(kWednesday3).getText() == null ||
          sheet1.getRangeByName(kWednesday1).getText() == '' &&
              sheet1.getRangeByName(kWednesday2).getText() == '' &&
              sheet1.getRangeByName(kWednesday3).getText() == '') {
        sheet1.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '11:25-1:05') {
      if (sheet1.getRangeByName(kWednesday4).getText() == null &&
          sheet1.getRangeByName(kWednesday5).getText() == null &&
          sheet1.getRangeByName(kWednesday6).getText() == null ||
          sheet1.getRangeByName(kWednesday4).getText() == '' &&
              sheet1.getRangeByName(kWednesday5).getText() == '' &&
              sheet1.getRangeByName(kWednesday6).getText() == '') {
        sheet1.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '1:05-3:30') {
      if (sheet1.getRangeByName(kWednesday6).getText() == null &&
          sheet1.getRangeByName(kWednesday7).getText() == null &&
          sheet1.getRangeByName(kWednesday8).getText() == null ||
          sheet1.getRangeByName(kWednesday6).getText() == '' &&
              sheet1.getRangeByName(kWednesday7).getText() == '' &&
              sheet1.getRangeByName(kWednesday8).getText() == '') {
        sheet1.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Thrusday-------------------------------------

    else if (kLectureDay == 'Thrusday' && kLectureTime == '9:00-11:25') {
      if (sheet1.getRangeByName(kThrusday1).getText() == null &&
          sheet1.getRangeByName(kThrusday2).getText() == null &&
          sheet1.getRangeByName(kThrusday3).getText() == null ||
          sheet1.getRangeByName(kThrusday1).getText() == '' &&
              sheet1.getRangeByName(kThrusday2).getText() == '' &&
              sheet1.getRangeByName(kThrusday3).getText() == '') {
        sheet1.getRangeByName(kThrusday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kThrusday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kThrusday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '11:25-1:05') {
      if (sheet1.getRangeByName(kThrusday4).getText() == null &&
          sheet1.getRangeByName(kThrusday5).getText() == null &&
          sheet1.getRangeByName(kThrusday6).getText() == null ||
          sheet1.getRangeByName(kThrusday4).getText() == '' &&
              sheet1.getRangeByName(kThrusday5).getText() == '' &&
              sheet1.getRangeByName(kThrusday6).getText() == '') {
        sheet1.getRangeByName(kThrusday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kThrusday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '1:05-3:30') {
      if (sheet1.getRangeByName(kThrusday6).getText() == null &&
          sheet1.getRangeByName(kThrusday7).getText() == null &&
          sheet1.getRangeByName(kThrusday8).getText() == null ||
          sheet1.getRangeByName(kThrusday6).getText() == '' &&
              sheet1.getRangeByName(kThrusday7).getText() == '' &&
              sheet1.getRangeByName(kThrusday8).getText() == '') {
        sheet1.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kThrusday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet1.getRangeByName(kThrusday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else {
      print('error');
    }
  }
  sheet1InsertSectionAlgorithm() {
    ///----------------------------Sections-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kSectionDay == 'Saturday' && kSectionTime == '9:00-10:30') {
      if (sheet1.getRangeByName(kSaturday1).getText() == null &&
          sheet1.getRangeByName(kSaturday2).getText() == null ||
          sheet1.getRangeByName(kSaturday1).getText() == '' &&
              sheet1.getRangeByName(kSaturday2).getText() == ''

      ) {
        // add data in the following fields
        sheet1.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '9:45-11:25') {
      if (sheet1.getRangeByName(kSaturday2).getText() == null &&
          sheet1.getRangeByName(kSaturday3).getText() == null ||
          sheet1.getRangeByName(kSaturday2).getText() == '' &&
              sheet1.getRangeByName(kSaturday3).getText() == ''
      ) {
        // add data in the following fields
        sheet1.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '11:25-1:05') {
      if (sheet1.getRangeByName(kSaturday4).getText() == null &&
          sheet1.getRangeByName(kSaturday5).getText() == null &&
          sheet1.getRangeByName(kSaturday6).getText() == null ||
          sheet1.getRangeByName(kSaturday4).getText() == '' &&
              sheet1.getRangeByName(kSaturday5).getText() == '' &&
              sheet1.getRangeByName(kSaturday6).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '1:05-2:45') {
      if (sheet1.getRangeByName(kSaturday6).getText() == null &&
          sheet1.getRangeByName(kSaturday7).getText() == null ||
          sheet1.getRangeByName(kSaturday6).getText() == '' &&
              sheet1.getRangeByName(kSaturday7).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '2:00-3:30') {
      if (sheet1.getRangeByName(kSaturday7).getText() == null &&
          sheet1.getRangeByName(kSaturday8).getText() == null ||
          sheet1.getRangeByName(kSaturday7).getText() == '' &&
              sheet1.getRangeByName(kSaturday8).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Sunday---------------------------------------
    else if (kSectionDay == 'Sunday' && kSectionTime == '9:00-10:30') {
      if (sheet1.getRangeByName(kSunday1).getText() == null &&
          sheet1.getRangeByName(kSunday2).getText() == null ||
          sheet1.getRangeByName(kSunday1).getText() == '' &&
              sheet1.getRangeByName(kSunday2).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '9:45-11:25') {
      if (sheet1.getRangeByName(kSunday2).getText() == null &&
          sheet1.getRangeByName(kSunday3).getText() == null ||
          sheet1.getRangeByName(kSunday2).getText() == '' &&
              sheet1.getRangeByName(kSunday3).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '11:25-1:05') {
      if (sheet1.getRangeByName(kSunday4).getText() == null &&
          sheet1.getRangeByName(kSunday5).getText() == null &&
          sheet1.getRangeByName(kSunday6).getText() == null ||
          sheet1.getRangeByName(kSunday4).getText() == '' &&
              sheet1.getRangeByName(kSunday5).getText() == '' &&
              sheet1.getRangeByName(kSunday6).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '1:05-2:45') {
      if (sheet1.getRangeByName(kSunday6).getText() == null &&
          sheet1.getRangeByName(kSunday7).getText() == null ||
          sheet1.getRangeByName(kSunday6).getText() == '' &&
              sheet1.getRangeByName(kSunday7).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '2:00-3:30') {
      if (sheet1.getRangeByName(kSunday7).getText() == null &&
          sheet1.getRangeByName(kSunday8).getText() == null ||
          sheet1.getRangeByName(kSunday7).getText() == '' &&
              sheet1.getRangeByName(kSunday8).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------
    else if (kSectionDay == 'Monday' && kSectionTime == '9:00-10:30') {
      if (sheet1.getRangeByName(kMonday1).getText() == null &&
          sheet1.getRangeByName(kMonday2).getText() == null ||
          sheet1.getRangeByName(kMonday1).getText() == '' &&
              sheet1.getRangeByName(kMonday2).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '9:45-11:25') {
      if (sheet1.getRangeByName(kMonday2).getText() == null &&
          sheet1.getRangeByName(kMonday3).getText() == null ||
          sheet1.getRangeByName(kMonday2).getText() == '' &&
              sheet1.getRangeByName(kMonday3).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '11:25-1:05') {
      if (sheet1.getRangeByName(kMonday4).getText() == null &&
          sheet1.getRangeByName(kMonday5).getText() == null &&
          sheet1.getRangeByName(kMonday6).getText() == null ||
          sheet1.getRangeByName(kMonday4).getText() == '' &&
              sheet1.getRangeByName(kMonday5).getText() == '' &&
              sheet1.getRangeByName(kMonday6).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '1:05-2:45') {
      if (sheet1.getRangeByName(kMonday6).getText() == null &&
          sheet1.getRangeByName(kMonday7).getText() == null ||
          sheet1.getRangeByName(kMonday6).getText() == '' &&
              sheet1.getRangeByName(kMonday7).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '2:00-3:30') {
      if (sheet1.getRangeByName(kMonday7).getText() == null &&
          sheet1.getRangeByName(kMonday8).getText() == null ||
          sheet1.getRangeByName(kMonday7).getText() == '' &&
              sheet1.getRangeByName(kMonday8).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------
    else if (kSectionDay == 'Tuesday' && kSectionTime == '9:00-10:30') {
      if (sheet1.getRangeByName(kTuesday1).getText() == null &&
          sheet1.getRangeByName(kTuesday2).getText() == null ||
          sheet1.getRangeByName(kTuesday1).getText() == '' &&
              sheet1.getRangeByName(kTuesday2).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '9:45-11:25') {
      if (sheet1.getRangeByName(kTuesday2).getText() == null &&
          sheet1.getRangeByName(kTuesday3).getText() == null ||
          sheet1.getRangeByName(kTuesday2).getText() == '' &&
              sheet1.getRangeByName(kTuesday3).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '11:25-1:05') {
      if (sheet1.getRangeByName(kTuesday4).getText() == null &&
          sheet1.getRangeByName(kTuesday5).getText() == null &&
          sheet1.getRangeByName(kTuesday6).getText() == null ||
          sheet1.getRangeByName(kTuesday4).getText() == '' &&
              sheet1.getRangeByName(kTuesday5).getText() == '' &&
              sheet1.getRangeByName(kTuesday6).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '1:05-2:45') {
      if (sheet1.getRangeByName(kTuesday6).getText() == null &&
          sheet1.getRangeByName(kTuesday7).getText() == null ||
          sheet1.getRangeByName(kTuesday6).getText() == '' &&
              sheet1.getRangeByName(kTuesday7).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '2:00-3:30') {
      if (sheet1.getRangeByName(kTuesday7).getText() == null &&
          sheet1.getRangeByName(kTuesday8).getText() == null ||
          sheet1.getRangeByName(kTuesday7).getText() == '' &&
              sheet1.getRangeByName(kTuesday8).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------
    else if (kSectionDay == 'Wednesday' && kSectionTime == '9:00-10:30') {
      if (sheet1.getRangeByName(kWednesday1).getText() == null &&
          sheet1.getRangeByName(kWednesday2).getText() == null ||
          sheet1.getRangeByName(kWednesday1).getText() == '' &&
              sheet1.getRangeByName(kWednesday2).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '9:45-11:25') {
      if (sheet1.getRangeByName(kWednesday2).getText() == null &&
          sheet1.getRangeByName(kWednesday3).getText() == null ||
          sheet1.getRangeByName(kWednesday2).getText() == '' &&
              sheet1.getRangeByName(kWednesday3).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '11:25-1:05') {
      if (sheet1.getRangeByName(kWednesday4).getText() == null &&
          sheet1.getRangeByName(kWednesday5).getText() == null &&
          sheet1.getRangeByName(kWednesday6).getText() == null ||
          sheet1.getRangeByName(kWednesday4).getText() == '' &&
              sheet1.getRangeByName(kWednesday5).getText() == '' &&
              sheet1.getRangeByName(kWednesday6).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '1:05-2:45') {
      if (sheet1.getRangeByName(kWednesday6).getText() == null &&
          sheet1.getRangeByName(kWednesday7).getText() == null ||
          sheet1.getRangeByName(kWednesday6).getText() == '' &&
              sheet1.getRangeByName(kWednesday7).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '2:00-3:30') {
      if (sheet1.getRangeByName(kWednesday7).getText() == null &&
          sheet1.getRangeByName(kWednesday8).getText() == null ||
          sheet1.getRangeByName(kWednesday7).getText() == '' &&
              sheet1.getRangeByName(kWednesday8).getText() == '') {
        // add data in the following fields
        sheet1.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet1.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else {
      print('error');
    }
  }

  ///sheet 2
  sheet2InsertLecturesAlgorithm() {
    ///----------------------------Lectures-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kLectureDay == 'Saturday' && kLectureTime == '9:00-11:25') {
      if (sheet2.getRangeByName(kSaturday1).text == null &&
          sheet2.getRangeByName(kSaturday2).text == null &&
          sheet2.getRangeByName(kSaturday3).text == null ||
          sheet2.getRangeByName(kSaturday1).text == '' &&
              sheet2.getRangeByName(kSaturday2).text == '' &&
              sheet2.getRangeByName(kSaturday3).text == ''
      ) {
        sheet2.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '11:25-1:05') {
      if (sheet2.getRangeByName(kSaturday4).getText() == null &&
          sheet2.getRangeByName(kSaturday5).getText() == null &&
          sheet2.getRangeByName(kSaturday6).getText() == null ||
          sheet2.getRangeByName(kSaturday4).getText() == '' &&
              sheet2.getRangeByName(kSaturday5).getText() == '' &&
              sheet2.getRangeByName(kSaturday6).getText() == ''

      ) {
        sheet2.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '1:05-3:30') {
      if (sheet2.getRangeByName(kSaturday6).getText() == null &&
          sheet2.getRangeByName(kSaturday7).getText() == null &&
          sheet2.getRangeByName(kSaturday8).getText() == null ||
          sheet2.getRangeByName(kSaturday6).getText() == '' &&
              sheet2.getRangeByName(kSaturday7).getText() == '' &&
              sheet2.getRangeByName(kSaturday8).getText() == ''
      ) {
        sheet2.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Sunday-------------------------------------
    else if (kLectureDay == 'Sunday' && kLectureTime == '9:00-11:25') {
      if (sheet2.getRangeByName(kSunday1).getText() == null &&
          sheet2.getRangeByName(kSunday2).getText() == null &&
          sheet2.getRangeByName(kSunday3).getText() == null ||
          sheet2.getRangeByName(kSunday1).getText() == '' &&
              sheet2.getRangeByName(kSunday2).getText() == '' &&
              sheet2.getRangeByName(kSunday3).getText() == '') {
        sheet2.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '11:25-1:05') {
      if (sheet2.getRangeByName(kSunday4).getText() == null &&
          sheet2.getRangeByName(kSunday5).getText() == null &&
          sheet2.getRangeByName(kSunday6).getText() == null ||
          sheet2.getRangeByName(kSunday4).getText() == '' &&
              sheet2.getRangeByName(kSunday5).getText() == '' &&
              sheet2.getRangeByName(kSunday6).getText() == '') {
        sheet2.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '1:05-3:30') {
      if (sheet2.getRangeByName(kSunday6).getText() == null &&
          sheet2.getRangeByName(kSunday7).getText() == null &&
          sheet2.getRangeByName(kSunday8).getText() == null ||
          sheet2.getRangeByName(kSunday6).getText() == '' &&
              sheet2.getRangeByName(kSunday7).getText() == '' &&
              sheet2.getRangeByName(kSunday8).getText() == '') {
        sheet2.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------

    else if (kLectureDay == 'Monday' && kLectureTime == '9:00-11:25') {
      if (sheet2.getRangeByName(kMonday1).getText() == null &&
          sheet2.getRangeByName(kMonday2).getText() == null &&
          sheet2.getRangeByName(kMonday3).getText() == null ||
          sheet2.getRangeByName(kMonday1).getText() == '' &&
              sheet2.getRangeByName(kMonday2).getText() == '' &&
              sheet2.getRangeByName(kMonday3).getText() == '') {
        sheet2.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '11:25-1:05') {
      if (sheet2.getRangeByName(kMonday4).getText() == null &&
          sheet2.getRangeByName(kMonday5).getText() == null &&
          sheet2.getRangeByName(kMonday6).getText() == null ||
          sheet2.getRangeByName(kMonday4).getText() == '' &&
              sheet2.getRangeByName(kMonday5).getText() == '' &&
              sheet2.getRangeByName(kMonday6).getText() == '') {
        sheet2.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '1:05-3:30') {
      if (sheet2.getRangeByName(kMonday6).getText() == null &&
          sheet2.getRangeByName(kMonday7).getText() == null &&
          sheet2.getRangeByName(kMonday8).getText() == null ||
          sheet2.getRangeByName(kMonday6).getText() == '' &&
              sheet2.getRangeByName(kMonday7).getText() == '' &&
              sheet2.getRangeByName(kMonday8).getText() == '') {
        sheet2.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------

    else if (kLectureDay == 'Tuesday' && kLectureTime == '9:00-11:25') {
      if (sheet2.getRangeByName(kTuesday1).getText() == null &&
          sheet2.getRangeByName(kTuesday2).getText() == null &&
          sheet2.getRangeByName(kTuesday3).getText() == null ||
          sheet2.getRangeByName(kTuesday1).getText() == '' &&
              sheet2.getRangeByName(kTuesday2).getText() == '' &&
              sheet2.getRangeByName(kTuesday3).getText() == '') {
        sheet2.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '11:25-1:05') {
      if (sheet2.getRangeByName(kTuesday4).getText() == null &&
          sheet2.getRangeByName(kTuesday5).getText() == null &&
          sheet2.getRangeByName(kTuesday6).getText() == null ||
          sheet2.getRangeByName(kTuesday4).getText() == '' &&
              sheet2.getRangeByName(kTuesday5).getText() == '' &&
              sheet2.getRangeByName(kTuesday6).getText() == '') {
        sheet2.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '1:05-3:30') {
      if (sheet2.getRangeByName(kTuesday6).getText() == null &&
          sheet2.getRangeByName(kTuesday7).getText() == null &&
          sheet2.getRangeByName(kTuesday8).getText() == null ||
          sheet2.getRangeByName(kTuesday6).getText() == '' &&
              sheet2.getRangeByName(kTuesday7).getText() == '' &&
              sheet2.getRangeByName(kTuesday8).getText() == '') {
        sheet2.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------

    else if (kLectureDay == 'Wednesday' && kLectureTime == '9:00-11:25') {
      if (sheet2.getRangeByName(kWednesday1).getText() == null &&
          sheet2.getRangeByName(kWednesday2).getText() == null &&
          sheet2.getRangeByName(kWednesday3).getText() == null ||
          sheet2.getRangeByName(kWednesday1).getText() == '' &&
              sheet2.getRangeByName(kWednesday2).getText() == '' &&
              sheet2.getRangeByName(kWednesday3).getText() == '') {
        sheet2.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '11:25-1:05') {
      if (sheet2.getRangeByName(kWednesday4).getText() == null &&
          sheet2.getRangeByName(kWednesday5).getText() == null &&
          sheet2.getRangeByName(kWednesday6).getText() == null ||
          sheet2.getRangeByName(kWednesday4).getText() == '' &&
              sheet2.getRangeByName(kWednesday5).getText() == '' &&
              sheet2.getRangeByName(kWednesday6).getText() == '') {
        sheet2.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '1:05-3:30') {
      if (sheet2.getRangeByName(kWednesday6).getText() == null &&
          sheet2.getRangeByName(kWednesday7).getText() == null &&
          sheet2.getRangeByName(kWednesday8).getText() == null ||
          sheet2.getRangeByName(kWednesday6).getText() == '' &&
              sheet2.getRangeByName(kWednesday7).getText() == '' &&
              sheet2.getRangeByName(kWednesday8).getText() == '') {
        sheet2.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Thrusday-------------------------------------

    else if (kLectureDay == 'Thrusday' && kLectureTime == '9:00-11:25') {
      if (sheet2.getRangeByName(kThrusday1).getText() == null &&
          sheet2.getRangeByName(kThrusday2).getText() == null &&
          sheet2.getRangeByName(kThrusday3).getText() == null ||
          sheet2.getRangeByName(kThrusday1).getText() == '' &&
              sheet2.getRangeByName(kThrusday2).getText() == '' &&
              sheet2.getRangeByName(kThrusday3).getText() == '') {
        sheet2.getRangeByName(kThrusday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kThrusday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kThrusday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '11:25-1:05') {
      if (sheet2.getRangeByName(kThrusday4).getText() == null &&
          sheet2.getRangeByName(kThrusday5).getText() == null &&
          sheet2.getRangeByName(kThrusday6).getText() == null ||
          sheet2.getRangeByName(kThrusday4).getText() == '' &&
              sheet2.getRangeByName(kThrusday5).getText() == '' &&
              sheet2.getRangeByName(kThrusday6).getText() == '') {
        sheet2.getRangeByName(kThrusday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kThrusday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '1:05-3:30') {
      if (sheet2.getRangeByName(kThrusday6).getText() == null &&
          sheet2.getRangeByName(kThrusday7).getText() == null &&
          sheet2.getRangeByName(kThrusday8).getText() == null ||
          sheet2.getRangeByName(kThrusday6).getText() == '' &&
              sheet2.getRangeByName(kThrusday7).getText() == '' &&
              sheet2.getRangeByName(kThrusday8).getText() == '') {
        sheet2.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kThrusday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet2.getRangeByName(kThrusday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else {
      print('error');
    }
  }
  sheet2InsertSectionAlgorithm() {
    ///----------------------------Sections-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kSectionDay == 'Saturday' && kSectionTime == '9:00-10:30') {
      if (sheet2.getRangeByName(kSaturday1).getText() == null &&
          sheet2.getRangeByName(kSaturday2).getText() == null ||
          sheet2.getRangeByName(kSaturday1).getText() == '' &&
              sheet2.getRangeByName(kSaturday2).getText() == ''

      ) {
        // add data in the following fields
        sheet2.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '9:45-11:25') {
      if (sheet2.getRangeByName(kSaturday2).getText() == null &&
          sheet2.getRangeByName(kSaturday3).getText() == null ||
          sheet2.getRangeByName(kSaturday2).getText() == '' &&
              sheet2.getRangeByName(kSaturday3).getText() == ''
      ) {
        // add data in the following fields
        sheet2.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '11:25-1:05') {
      if (sheet2.getRangeByName(kSaturday4).getText() == null &&
          sheet2.getRangeByName(kSaturday5).getText() == null &&
          sheet2.getRangeByName(kSaturday6).getText() == null ||
          sheet2.getRangeByName(kSaturday4).getText() == '' &&
              sheet2.getRangeByName(kSaturday5).getText() == '' &&
              sheet2.getRangeByName(kSaturday6).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '1:05-2:45') {
      if (sheet2.getRangeByName(kSaturday6).getText() == null &&
          sheet2.getRangeByName(kSaturday7).getText() == null ||
          sheet2.getRangeByName(kSaturday6).getText() == '' &&
              sheet2.getRangeByName(kSaturday7).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '2:00-3:30') {
      if (sheet2.getRangeByName(kSaturday7).getText() == null &&
          sheet2.getRangeByName(kSaturday8).getText() == null ||
          sheet2.getRangeByName(kSaturday7).getText() == '' &&
              sheet2.getRangeByName(kSaturday8).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Sunday---------------------------------------
    else if (kSectionDay == 'Sunday' && kSectionTime == '9:00-10:30') {
      if (sheet2.getRangeByName(kSunday1).getText() == null &&
          sheet2.getRangeByName(kSunday2).getText() == null ||
          sheet2.getRangeByName(kSunday1).getText() == '' &&
              sheet2.getRangeByName(kSunday2).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '9:45-11:25') {
      if (sheet2.getRangeByName(kSunday2).getText() == null &&
          sheet2.getRangeByName(kSunday3).getText() == null ||
          sheet2.getRangeByName(kSunday2).getText() == '' &&
              sheet2.getRangeByName(kSunday3).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '11:25-1:05') {
      if (sheet2.getRangeByName(kSunday4).getText() == null &&
          sheet2.getRangeByName(kSunday5).getText() == null &&
          sheet2.getRangeByName(kSunday6).getText() == null ||
          sheet2.getRangeByName(kSunday4).getText() == '' &&
              sheet2.getRangeByName(kSunday5).getText() == '' &&
              sheet2.getRangeByName(kSunday6).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '1:05-2:45') {
      if (sheet2.getRangeByName(kSunday6).getText() == null &&
          sheet2.getRangeByName(kSunday7).getText() == null ||
          sheet2.getRangeByName(kSunday6).getText() == '' &&
              sheet2.getRangeByName(kSunday7).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '2:00-3:30') {
      if (sheet2.getRangeByName(kSunday7).getText() == null &&
          sheet2.getRangeByName(kSunday8).getText() == null ||
          sheet2.getRangeByName(kSunday7).getText() == '' &&
              sheet2.getRangeByName(kSunday8).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------
    else if (kSectionDay == 'Monday' && kSectionTime == '9:00-10:30') {
      if (sheet2.getRangeByName(kMonday1).getText() == null &&
          sheet2.getRangeByName(kMonday2).getText() == null ||
          sheet2.getRangeByName(kMonday1).getText() == '' &&
              sheet2.getRangeByName(kMonday2).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '9:45-11:25') {
      if (sheet2.getRangeByName(kMonday2).getText() == null &&
          sheet2.getRangeByName(kMonday3).getText() == null ||
          sheet2.getRangeByName(kMonday2).getText() == '' &&
              sheet2.getRangeByName(kMonday3).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '11:25-1:05') {
      if (sheet2.getRangeByName(kMonday4).getText() == null &&
          sheet2.getRangeByName(kMonday5).getText() == null &&
          sheet2.getRangeByName(kMonday6).getText() == null ||
          sheet2.getRangeByName(kMonday4).getText() == '' &&
              sheet2.getRangeByName(kMonday5).getText() == '' &&
              sheet2.getRangeByName(kMonday6).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '1:05-2:45') {
      if (sheet2.getRangeByName(kMonday6).getText() == null &&
          sheet2.getRangeByName(kMonday7).getText() == null ||
          sheet2.getRangeByName(kMonday6).getText() == '' &&
              sheet2.getRangeByName(kMonday7).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '2:00-3:30') {
      if (sheet2.getRangeByName(kMonday7).getText() == null &&
          sheet2.getRangeByName(kMonday8).getText() == null ||
          sheet2.getRangeByName(kMonday7).getText() == '' &&
              sheet2.getRangeByName(kMonday8).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------
    else if (kSectionDay == 'Tuesday' && kSectionTime == '9:00-10:30') {
      if (sheet2.getRangeByName(kTuesday1).getText() == null &&
          sheet2.getRangeByName(kTuesday2).getText() == null ||
          sheet2.getRangeByName(kTuesday1).getText() == '' &&
              sheet2.getRangeByName(kTuesday2).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '9:45-11:25') {
      if (sheet2.getRangeByName(kTuesday2).getText() == null &&
          sheet2.getRangeByName(kTuesday3).getText() == null ||
          sheet2.getRangeByName(kTuesday2).getText() == '' &&
              sheet2.getRangeByName(kTuesday3).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '11:25-1:05') {
      if (sheet2.getRangeByName(kTuesday4).getText() == null &&
          sheet2.getRangeByName(kTuesday5).getText() == null &&
          sheet2.getRangeByName(kTuesday6).getText() == null ||
          sheet2.getRangeByName(kTuesday4).getText() == '' &&
              sheet2.getRangeByName(kTuesday5).getText() == '' &&
              sheet2.getRangeByName(kTuesday6).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '1:05-2:45') {
      if (sheet2.getRangeByName(kTuesday6).getText() == null &&
          sheet2.getRangeByName(kTuesday7).getText() == null ||
          sheet2.getRangeByName(kTuesday6).getText() == '' &&
              sheet2.getRangeByName(kTuesday7).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '2:00-3:30') {
      if (sheet2.getRangeByName(kTuesday7).getText() == null &&
          sheet2.getRangeByName(kTuesday8).getText() == null ||
          sheet2.getRangeByName(kTuesday7).getText() == '' &&
              sheet2.getRangeByName(kTuesday8).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------
    else if (kSectionDay == 'Wednesday' && kSectionTime == '9:00-10:30') {
      if (sheet2.getRangeByName(kWednesday1).getText() == null &&
          sheet2.getRangeByName(kWednesday2).getText() == null ||
          sheet2.getRangeByName(kWednesday1).getText() == '' &&
              sheet2.getRangeByName(kWednesday2).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '9:45-11:25') {
      if (sheet2.getRangeByName(kWednesday2).getText() == null &&
          sheet2.getRangeByName(kWednesday3).getText() == null ||
          sheet2.getRangeByName(kWednesday2).getText() == '' &&
              sheet2.getRangeByName(kWednesday3).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '11:25-1:05') {
      if (sheet2.getRangeByName(kWednesday4).getText() == null &&
          sheet2.getRangeByName(kWednesday5).getText() == null &&
          sheet2.getRangeByName(kWednesday6).getText() == null ||
          sheet2.getRangeByName(kWednesday4).getText() == '' &&
              sheet2.getRangeByName(kWednesday5).getText() == '' &&
              sheet2.getRangeByName(kWednesday6).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '1:05-2:45') {
      if (sheet2.getRangeByName(kWednesday6).getText() == null &&
          sheet2.getRangeByName(kWednesday7).getText() == null ||
          sheet2.getRangeByName(kWednesday6).getText() == '' &&
              sheet2.getRangeByName(kWednesday7).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '2:00-3:30') {
      if (sheet2.getRangeByName(kWednesday7).getText() == null &&
          sheet2.getRangeByName(kWednesday8).getText() == null ||
          sheet2.getRangeByName(kWednesday7).getText() == '' &&
              sheet2.getRangeByName(kWednesday8).getText() == '') {
        // add data in the following fields
        sheet2.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet2.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else {
      print('error');
    }
  }

  ///sheet 3
  sheet3InsertLecturesAlgorithm() {
    ///----------------------------Lectures-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kLectureDay == 'Saturday' && kLectureTime == '9:00-11:25') {
      if (sheet3.getRangeByName(kSaturday1).text == null &&
          sheet3.getRangeByName(kSaturday2).text == null &&
          sheet3.getRangeByName(kSaturday3).text == null ||
          sheet3.getRangeByName(kSaturday1).text == '' &&
              sheet3.getRangeByName(kSaturday2).text == '' &&
              sheet3.getRangeByName(kSaturday3).text == ''
      ) {
        sheet3.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '11:25-1:05') {
      if (sheet3.getRangeByName(kSaturday4).getText() == null &&
          sheet3.getRangeByName(kSaturday5).getText() == null &&
          sheet3.getRangeByName(kSaturday6).getText() == null ||
          sheet3.getRangeByName(kSaturday4).getText() == '' &&
              sheet3.getRangeByName(kSaturday5).getText() == '' &&
              sheet3.getRangeByName(kSaturday6).getText() == ''

      ) {
        sheet3.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '1:05-3:30') {
      if (sheet3.getRangeByName(kSaturday6).getText() == null &&
          sheet3.getRangeByName(kSaturday7).getText() == null &&
          sheet3.getRangeByName(kSaturday8).getText() == null ||
          sheet3.getRangeByName(kSaturday6).getText() == '' &&
              sheet3.getRangeByName(kSaturday7).getText() == '' &&
              sheet3.getRangeByName(kSaturday8).getText() == ''
      ) {
        sheet3.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Sunday-------------------------------------
    else if (kLectureDay == 'Sunday' && kLectureTime == '9:00-11:25') {
      if (sheet3.getRangeByName(kSunday1).getText() == null &&
          sheet3.getRangeByName(kSunday2).getText() == null &&
          sheet3.getRangeByName(kSunday3).getText() == null ||
          sheet3.getRangeByName(kSunday1).getText() == '' &&
              sheet3.getRangeByName(kSunday2).getText() == '' &&
              sheet3.getRangeByName(kSunday3).getText() == '') {
        sheet3.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '11:25-1:05') {
      if (sheet3.getRangeByName(kSunday4).getText() == null &&
          sheet3.getRangeByName(kSunday5).getText() == null &&
          sheet3.getRangeByName(kSunday6).getText() == null ||
          sheet3.getRangeByName(kSunday4).getText() == '' &&
              sheet3.getRangeByName(kSunday5).getText() == '' &&
              sheet3.getRangeByName(kSunday6).getText() == '') {
        sheet3.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '1:05-3:30') {
      if (sheet3.getRangeByName(kSunday6).getText() == null &&
          sheet3.getRangeByName(kSunday7).getText() == null &&
          sheet3.getRangeByName(kSunday8).getText() == null ||
          sheet3.getRangeByName(kSunday6).getText() == '' &&
              sheet3.getRangeByName(kSunday7).getText() == '' &&
              sheet3.getRangeByName(kSunday8).getText() == '') {
        sheet3.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------

    else if (kLectureDay == 'Monday' && kLectureTime == '9:00-11:25') {
      if (sheet3.getRangeByName(kMonday1).getText() == null &&
          sheet3.getRangeByName(kMonday2).getText() == null &&
          sheet3.getRangeByName(kMonday3).getText() == null ||
          sheet3.getRangeByName(kMonday1).getText() == '' &&
              sheet3.getRangeByName(kMonday2).getText() == '' &&
              sheet3.getRangeByName(kMonday3).getText() == '') {
        sheet3.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '11:25-1:05') {
      if (sheet3.getRangeByName(kMonday4).getText() == null &&
          sheet3.getRangeByName(kMonday5).getText() == null &&
          sheet3.getRangeByName(kMonday6).getText() == null ||
          sheet3.getRangeByName(kMonday4).getText() == '' &&
              sheet3.getRangeByName(kMonday5).getText() == '' &&
              sheet3.getRangeByName(kMonday6).getText() == '') {
        sheet3.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '1:05-3:30') {
      if (sheet3.getRangeByName(kMonday6).getText() == null &&
          sheet3.getRangeByName(kMonday7).getText() == null &&
          sheet3.getRangeByName(kMonday8).getText() == null ||
          sheet3.getRangeByName(kMonday6).getText() == '' &&
              sheet3.getRangeByName(kMonday7).getText() == '' &&
              sheet3.getRangeByName(kMonday8).getText() == '') {
        sheet3.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------

    else if (kLectureDay == 'Tuesday' && kLectureTime == '9:00-11:25') {
      if (sheet3.getRangeByName(kTuesday1).getText() == null &&
          sheet3.getRangeByName(kTuesday2).getText() == null &&
          sheet3.getRangeByName(kTuesday3).getText() == null ||
          sheet3.getRangeByName(kTuesday1).getText() == '' &&
              sheet3.getRangeByName(kTuesday2).getText() == '' &&
              sheet3.getRangeByName(kTuesday3).getText() == '') {
        sheet3.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '11:25-1:05') {
      if (sheet3.getRangeByName(kTuesday4).getText() == null &&
          sheet3.getRangeByName(kTuesday5).getText() == null &&
          sheet3.getRangeByName(kTuesday6).getText() == null ||
          sheet3.getRangeByName(kTuesday4).getText() == '' &&
              sheet3.getRangeByName(kTuesday5).getText() == '' &&
              sheet3.getRangeByName(kTuesday6).getText() == '') {
        sheet3.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '1:05-3:30') {
      if (sheet3.getRangeByName(kTuesday6).getText() == null &&
          sheet3.getRangeByName(kTuesday7).getText() == null &&
          sheet3.getRangeByName(kTuesday8).getText() == null ||
          sheet3.getRangeByName(kTuesday6).getText() == '' &&
              sheet3.getRangeByName(kTuesday7).getText() == '' &&
              sheet3.getRangeByName(kTuesday8).getText() == '') {
        sheet3.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------

    else if (kLectureDay == 'Wednesday' && kLectureTime == '9:00-11:25') {
      if (sheet3.getRangeByName(kWednesday1).getText() == null &&
          sheet3.getRangeByName(kWednesday2).getText() == null &&
          sheet3.getRangeByName(kWednesday3).getText() == null ||
          sheet3.getRangeByName(kWednesday1).getText() == '' &&
              sheet3.getRangeByName(kWednesday2).getText() == '' &&
              sheet3.getRangeByName(kWednesday3).getText() == '') {
        sheet3.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '11:25-1:05') {
      if (sheet3.getRangeByName(kWednesday4).getText() == null &&
          sheet3.getRangeByName(kWednesday5).getText() == null &&
          sheet3.getRangeByName(kWednesday6).getText() == null ||
          sheet3.getRangeByName(kWednesday4).getText() == '' &&
              sheet3.getRangeByName(kWednesday5).getText() == '' &&
              sheet3.getRangeByName(kWednesday6).getText() == '') {
        sheet3.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '1:05-3:30') {
      if (sheet3.getRangeByName(kWednesday6).getText() == null &&
          sheet3.getRangeByName(kWednesday7).getText() == null &&
          sheet3.getRangeByName(kWednesday8).getText() == null ||
          sheet3.getRangeByName(kWednesday6).getText() == '' &&
              sheet3.getRangeByName(kWednesday7).getText() == '' &&
              sheet3.getRangeByName(kWednesday8).getText() == '') {
        sheet3.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Thrusday-------------------------------------

    else if (kLectureDay == 'Thrusday' && kLectureTime == '9:00-11:25') {
      if (sheet3.getRangeByName(kThrusday1).getText() == null &&
          sheet3.getRangeByName(kThrusday2).getText() == null &&
          sheet3.getRangeByName(kThrusday3).getText() == null ||
          sheet3.getRangeByName(kThrusday1).getText() == '' &&
              sheet3.getRangeByName(kThrusday2).getText() == '' &&
              sheet3.getRangeByName(kThrusday3).getText() == '') {
        sheet3.getRangeByName(kThrusday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kThrusday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kThrusday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '11:25-1:05') {
      if (sheet3.getRangeByName(kThrusday4).getText() == null &&
          sheet3.getRangeByName(kThrusday5).getText() == null &&
          sheet3.getRangeByName(kThrusday6).getText() == null ||
          sheet3.getRangeByName(kThrusday4).getText() == '' &&
              sheet3.getRangeByName(kThrusday5).getText() == '' &&
              sheet3.getRangeByName(kThrusday6).getText() == '') {
        sheet3.getRangeByName(kThrusday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kThrusday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '1:05-3:30') {
      if (sheet3.getRangeByName(kThrusday6).getText() == null &&
          sheet3.getRangeByName(kThrusday7).getText() == null &&
          sheet3.getRangeByName(kThrusday8).getText() == null ||
          sheet3.getRangeByName(kThrusday6).getText() == '' &&
              sheet3.getRangeByName(kThrusday7).getText() == '' &&
              sheet3.getRangeByName(kThrusday8).getText() == '') {
        sheet3.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kThrusday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet3.getRangeByName(kThrusday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else {
      print('error');
    }
  }
  sheet3InsertSectionAlgorithm() {
    ///----------------------------Sections-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kSectionDay == 'Saturday' && kSectionTime == '9:00-10:30') {
      if (sheet3.getRangeByName(kSaturday1).getText() == null &&
          sheet3.getRangeByName(kSaturday2).getText() == null ||
          sheet3.getRangeByName(kSaturday1).getText() == '' &&
              sheet3.getRangeByName(kSaturday2).getText() == ''

      ) {
        // add data in the following fields
        sheet3.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '9:45-11:25') {
      if (sheet3.getRangeByName(kSaturday2).getText() == null &&
          sheet3.getRangeByName(kSaturday3).getText() == null ||
          sheet3.getRangeByName(kSaturday2).getText() == '' &&
              sheet3.getRangeByName(kSaturday3).getText() == ''
      ) {
        // add data in the following fields
        sheet3.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '11:25-1:05') {
      if (sheet3.getRangeByName(kSaturday4).getText() == null &&
          sheet3.getRangeByName(kSaturday5).getText() == null &&
          sheet3.getRangeByName(kSaturday6).getText() == null ||
          sheet3.getRangeByName(kSaturday4).getText() == '' &&
              sheet3.getRangeByName(kSaturday5).getText() == '' &&
              sheet3.getRangeByName(kSaturday6).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '1:05-2:45') {
      if (sheet3.getRangeByName(kSaturday6).getText() == null &&
          sheet3.getRangeByName(kSaturday7).getText() == null ||
          sheet3.getRangeByName(kSaturday6).getText() == '' &&
              sheet3.getRangeByName(kSaturday7).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '2:00-3:30') {
      if (sheet3.getRangeByName(kSaturday7).getText() == null &&
          sheet3.getRangeByName(kSaturday8).getText() == null ||
          sheet3.getRangeByName(kSaturday7).getText() == '' &&
              sheet3.getRangeByName(kSaturday8).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Sunday---------------------------------------
    else if (kSectionDay == 'Sunday' && kSectionTime == '9:00-10:30') {
      if (sheet3.getRangeByName(kSunday1).getText() == null &&
          sheet3.getRangeByName(kSunday2).getText() == null ||
          sheet3.getRangeByName(kSunday1).getText() == '' &&
              sheet3.getRangeByName(kSunday2).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '9:45-11:25') {
      if (sheet3.getRangeByName(kSunday2).getText() == null &&
          sheet3.getRangeByName(kSunday3).getText() == null ||
          sheet3.getRangeByName(kSunday2).getText() == '' &&
              sheet3.getRangeByName(kSunday3).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '11:25-1:05') {
      if (sheet3.getRangeByName(kSunday4).getText() == null &&
          sheet3.getRangeByName(kSunday5).getText() == null &&
          sheet3.getRangeByName(kSunday6).getText() == null ||
          sheet3.getRangeByName(kSunday4).getText() == '' &&
              sheet3.getRangeByName(kSunday5).getText() == '' &&
              sheet3.getRangeByName(kSunday6).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '1:05-2:45') {
      if (sheet3.getRangeByName(kSunday6).getText() == null &&
          sheet3.getRangeByName(kSunday7).getText() == null ||
          sheet3.getRangeByName(kSunday6).getText() == '' &&
              sheet3.getRangeByName(kSunday7).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '2:00-3:30') {
      if (sheet3.getRangeByName(kSunday7).getText() == null &&
          sheet3.getRangeByName(kSunday8).getText() == null ||
          sheet3.getRangeByName(kSunday7).getText() == '' &&
              sheet3.getRangeByName(kSunday8).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------
    else if (kSectionDay == 'Monday' && kSectionTime == '9:00-10:30') {
      if (sheet3.getRangeByName(kMonday1).getText() == null &&
          sheet3.getRangeByName(kMonday2).getText() == null ||
          sheet3.getRangeByName(kMonday1).getText() == '' &&
              sheet3.getRangeByName(kMonday2).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '9:45-11:25') {
      if (sheet3.getRangeByName(kMonday2).getText() == null &&
          sheet3.getRangeByName(kMonday3).getText() == null ||
          sheet3.getRangeByName(kMonday2).getText() == '' &&
              sheet3.getRangeByName(kMonday3).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '11:25-1:05') {
      if (sheet3.getRangeByName(kMonday4).getText() == null &&
          sheet3.getRangeByName(kMonday5).getText() == null &&
          sheet3.getRangeByName(kMonday6).getText() == null ||
          sheet3.getRangeByName(kMonday4).getText() == '' &&
              sheet3.getRangeByName(kMonday5).getText() == '' &&
              sheet3.getRangeByName(kMonday6).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '1:05-2:45') {
      if (sheet3.getRangeByName(kMonday6).getText() == null &&
          sheet3.getRangeByName(kMonday7).getText() == null ||
          sheet3.getRangeByName(kMonday6).getText() == '' &&
              sheet3.getRangeByName(kMonday7).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '2:00-3:30') {
      if (sheet3.getRangeByName(kMonday7).getText() == null &&
          sheet3.getRangeByName(kMonday8).getText() == null ||
          sheet3.getRangeByName(kMonday7).getText() == '' &&
              sheet3.getRangeByName(kMonday8).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------
    else if (kSectionDay == 'Tuesday' && kSectionTime == '9:00-10:30') {
      if (sheet3.getRangeByName(kTuesday1).getText() == null &&
          sheet3.getRangeByName(kTuesday2).getText() == null ||
          sheet3.getRangeByName(kTuesday1).getText() == '' &&
              sheet3.getRangeByName(kTuesday2).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '9:45-11:25') {
      if (sheet3.getRangeByName(kTuesday2).getText() == null &&
          sheet3.getRangeByName(kTuesday3).getText() == null ||
          sheet3.getRangeByName(kTuesday2).getText() == '' &&
              sheet3.getRangeByName(kTuesday3).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '11:25-1:05') {
      if (sheet3.getRangeByName(kTuesday4).getText() == null &&
          sheet3.getRangeByName(kTuesday5).getText() == null &&
          sheet3.getRangeByName(kTuesday6).getText() == null ||
          sheet3.getRangeByName(kTuesday4).getText() == '' &&
              sheet3.getRangeByName(kTuesday5).getText() == '' &&
              sheet3.getRangeByName(kTuesday6).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '1:05-2:45') {
      if (sheet3.getRangeByName(kTuesday6).getText() == null &&
          sheet3.getRangeByName(kTuesday7).getText() == null ||
          sheet3.getRangeByName(kTuesday6).getText() == '' &&
              sheet3.getRangeByName(kTuesday7).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '2:00-3:30') {
      if (sheet3.getRangeByName(kTuesday7).getText() == null &&
          sheet3.getRangeByName(kTuesday8).getText() == null ||
          sheet3.getRangeByName(kTuesday7).getText() == '' &&
              sheet3.getRangeByName(kTuesday8).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------
    else if (kSectionDay == 'Wednesday' && kSectionTime == '9:00-10:30') {
      if (sheet3.getRangeByName(kWednesday1).getText() == null &&
          sheet3.getRangeByName(kWednesday2).getText() == null ||
          sheet3.getRangeByName(kWednesday1).getText() == '' &&
              sheet3.getRangeByName(kWednesday2).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '9:45-11:25') {
      if (sheet3.getRangeByName(kWednesday2).getText() == null &&
          sheet3.getRangeByName(kWednesday3).getText() == null ||
          sheet3.getRangeByName(kWednesday2).getText() == '' &&
              sheet3.getRangeByName(kWednesday3).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '11:25-1:05') {
      if (sheet3.getRangeByName(kWednesday4).getText() == null &&
          sheet3.getRangeByName(kWednesday5).getText() == null &&
          sheet3.getRangeByName(kWednesday6).getText() == null ||
          sheet3.getRangeByName(kWednesday4).getText() == '' &&
              sheet3.getRangeByName(kWednesday5).getText() == '' &&
              sheet3.getRangeByName(kWednesday6).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '1:05-2:45') {
      if (sheet3.getRangeByName(kWednesday6).getText() == null &&
          sheet3.getRangeByName(kWednesday7).getText() == null ||
          sheet3.getRangeByName(kWednesday6).getText() == '' &&
              sheet3.getRangeByName(kWednesday7).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '2:00-3:30') {
      if (sheet3.getRangeByName(kWednesday7).getText() == null &&
          sheet3.getRangeByName(kWednesday8).getText() == null ||
          sheet3.getRangeByName(kWednesday7).getText() == '' &&
              sheet3.getRangeByName(kWednesday8).getText() == '') {
        // add data in the following fields
        sheet3.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet3.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else {
      print('error');
    }
  }

  ///sheet 4
  sheet4InsertLecturesAlgorithm() {
    ///----------------------------Lectures-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kLectureDay == 'Saturday' && kLectureTime == '9:00-11:25') {
      if (sheet4.getRangeByName(kSaturday1).text == null &&
          sheet4.getRangeByName(kSaturday2).text == null &&
          sheet4.getRangeByName(kSaturday3).text == null ||
          sheet4.getRangeByName(kSaturday1).text == '' &&
              sheet4.getRangeByName(kSaturday2).text == '' &&
              sheet4.getRangeByName(kSaturday3).text == ''
      ) {
        sheet4.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '11:25-1:05') {
      if (sheet4.getRangeByName(kSaturday4).getText() == null &&
          sheet4.getRangeByName(kSaturday5).getText() == null &&
          sheet4.getRangeByName(kSaturday6).getText() == null ||
          sheet4.getRangeByName(kSaturday4).getText() == '' &&
              sheet4.getRangeByName(kSaturday5).getText() == '' &&
              sheet4.getRangeByName(kSaturday6).getText() == ''

      ) {
        sheet4.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '1:05-3:30') {
      if (sheet4.getRangeByName(kSaturday6).getText() == null &&
          sheet4.getRangeByName(kSaturday7).getText() == null &&
          sheet4.getRangeByName(kSaturday8).getText() == null ||
          sheet4.getRangeByName(kSaturday6).getText() == '' &&
              sheet4.getRangeByName(kSaturday7).getText() == '' &&
              sheet4.getRangeByName(kSaturday8).getText() == ''
      ) {
        sheet4.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Sunday-------------------------------------
    else if (kLectureDay == 'Sunday' && kLectureTime == '9:00-11:25') {
      if (sheet4.getRangeByName(kSunday1).getText() == null &&
          sheet4.getRangeByName(kSunday2).getText() == null &&
          sheet4.getRangeByName(kSunday3).getText() == null ||
          sheet4.getRangeByName(kSunday1).getText() == '' &&
              sheet4.getRangeByName(kSunday2).getText() == '' &&
              sheet4.getRangeByName(kSunday3).getText() == '') {
        sheet4.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '11:25-1:05') {
      if (sheet4.getRangeByName(kSunday4).getText() == null &&
          sheet4.getRangeByName(kSunday5).getText() == null &&
          sheet4.getRangeByName(kSunday6).getText() == null ||
          sheet4.getRangeByName(kSunday4).getText() == '' &&
              sheet4.getRangeByName(kSunday5).getText() == '' &&
              sheet4.getRangeByName(kSunday6).getText() == '') {
        sheet4.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '1:05-3:30') {
      if (sheet4.getRangeByName(kSunday6).getText() == null &&
          sheet4.getRangeByName(kSunday7).getText() == null &&
          sheet4.getRangeByName(kSunday8).getText() == null ||
          sheet4.getRangeByName(kSunday6).getText() == '' &&
              sheet4.getRangeByName(kSunday7).getText() == '' &&
              sheet4.getRangeByName(kSunday8).getText() == '') {
        sheet4.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------

    else if (kLectureDay == 'Monday' && kLectureTime == '9:00-11:25') {
      if (sheet4.getRangeByName(kMonday1).getText() == null &&
          sheet4.getRangeByName(kMonday2).getText() == null &&
          sheet4.getRangeByName(kMonday3).getText() == null ||
          sheet4.getRangeByName(kMonday1).getText() == '' &&
              sheet4.getRangeByName(kMonday2).getText() == '' &&
              sheet4.getRangeByName(kMonday3).getText() == '') {
        sheet4.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '11:25-1:05') {
      if (sheet4.getRangeByName(kMonday4).getText() == null &&
          sheet4.getRangeByName(kMonday5).getText() == null &&
          sheet4.getRangeByName(kMonday6).getText() == null ||
          sheet4.getRangeByName(kMonday4).getText() == '' &&
              sheet4.getRangeByName(kMonday5).getText() == '' &&
              sheet4.getRangeByName(kMonday6).getText() == '') {
        sheet4.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '1:05-3:30') {
      if (sheet4.getRangeByName(kMonday6).getText() == null &&
          sheet4.getRangeByName(kMonday7).getText() == null &&
          sheet4.getRangeByName(kMonday8).getText() == null ||
          sheet4.getRangeByName(kMonday6).getText() == '' &&
              sheet4.getRangeByName(kMonday7).getText() == '' &&
              sheet4.getRangeByName(kMonday8).getText() == '') {
        sheet4.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------

    else if (kLectureDay == 'Tuesday' && kLectureTime == '9:00-11:25') {
      if (sheet4.getRangeByName(kTuesday1).getText() == null &&
          sheet4.getRangeByName(kTuesday2).getText() == null &&
          sheet4.getRangeByName(kTuesday3).getText() == null ||
          sheet4.getRangeByName(kTuesday1).getText() == '' &&
              sheet4.getRangeByName(kTuesday2).getText() == '' &&
              sheet4.getRangeByName(kTuesday3).getText() == '') {
        sheet4.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '11:25-1:05') {
      if (sheet4.getRangeByName(kTuesday4).getText() == null &&
          sheet4.getRangeByName(kTuesday5).getText() == null &&
          sheet4.getRangeByName(kTuesday6).getText() == null ||
          sheet4.getRangeByName(kTuesday4).getText() == '' &&
              sheet4.getRangeByName(kTuesday5).getText() == '' &&
              sheet4.getRangeByName(kTuesday6).getText() == '') {
        sheet4.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '1:05-3:30') {
      if (sheet4.getRangeByName(kTuesday6).getText() == null &&
          sheet4.getRangeByName(kTuesday7).getText() == null &&
          sheet4.getRangeByName(kTuesday8).getText() == null ||
          sheet4.getRangeByName(kTuesday6).getText() == '' &&
              sheet4.getRangeByName(kTuesday7).getText() == '' &&
              sheet4.getRangeByName(kTuesday8).getText() == '') {
        sheet4.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------

    else if (kLectureDay == 'Wednesday' && kLectureTime == '9:00-11:25') {
      if (sheet4.getRangeByName(kWednesday1).getText() == null &&
          sheet4.getRangeByName(kWednesday2).getText() == null &&
          sheet4.getRangeByName(kWednesday3).getText() == null ||
          sheet4.getRangeByName(kWednesday1).getText() == '' &&
              sheet4.getRangeByName(kWednesday2).getText() == '' &&
              sheet4.getRangeByName(kWednesday3).getText() == '') {
        sheet4.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '11:25-1:05') {
      if (sheet4.getRangeByName(kWednesday4).getText() == null &&
          sheet4.getRangeByName(kWednesday5).getText() == null &&
          sheet4.getRangeByName(kWednesday6).getText() == null ||
          sheet4.getRangeByName(kWednesday4).getText() == '' &&
              sheet4.getRangeByName(kWednesday5).getText() == '' &&
              sheet4.getRangeByName(kWednesday6).getText() == '') {
        sheet4.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '1:05-3:30') {
      if (sheet4.getRangeByName(kWednesday6).getText() == null &&
          sheet4.getRangeByName(kWednesday7).getText() == null &&
          sheet4.getRangeByName(kWednesday8).getText() == null ||
          sheet4.getRangeByName(kWednesday6).getText() == '' &&
              sheet4.getRangeByName(kWednesday7).getText() == '' &&
              sheet4.getRangeByName(kWednesday8).getText() == '') {
        sheet4.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Thrusday-------------------------------------

    else if (kLectureDay == 'Thrusday' && kLectureTime == '9:00-11:25') {
      if (sheet4.getRangeByName(kThrusday1).getText() == null &&
          sheet4.getRangeByName(kThrusday2).getText() == null &&
          sheet4.getRangeByName(kThrusday3).getText() == null ||
          sheet4.getRangeByName(kThrusday1).getText() == '' &&
              sheet4.getRangeByName(kThrusday2).getText() == '' &&
              sheet4.getRangeByName(kThrusday3).getText() == '') {
        sheet4.getRangeByName(kThrusday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kThrusday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kThrusday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '11:25-1:05') {
      if (sheet4.getRangeByName(kThrusday4).getText() == null &&
          sheet4.getRangeByName(kThrusday5).getText() == null &&
          sheet4.getRangeByName(kThrusday6).getText() == null ||
          sheet4.getRangeByName(kThrusday4).getText() == '' &&
              sheet4.getRangeByName(kThrusday5).getText() == '' &&
              sheet4.getRangeByName(kThrusday6).getText() == '') {
        sheet4.getRangeByName(kThrusday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kThrusday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '1:05-3:30') {
      if (sheet4.getRangeByName(kThrusday6).getText() == null &&
          sheet4.getRangeByName(kThrusday7).getText() == null &&
          sheet4.getRangeByName(kThrusday8).getText() == null ||
          sheet4.getRangeByName(kThrusday6).getText() == '' &&
              sheet4.getRangeByName(kThrusday7).getText() == '' &&
              sheet4.getRangeByName(kThrusday8).getText() == '') {
        sheet4.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kThrusday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet4.getRangeByName(kThrusday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else {
      print('error');
    }
  }
  sheet4InsertSectionAlgorithm() {
    ///----------------------------Sections-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kSectionDay == 'Saturday' && kSectionTime == '9:00-10:30') {
      if (sheet4.getRangeByName(kSaturday1).getText() == null &&
          sheet4.getRangeByName(kSaturday2).getText() == null ||
          sheet4.getRangeByName(kSaturday1).getText() == '' &&
              sheet4.getRangeByName(kSaturday2).getText() == ''

      ) {
        // add data in the following fields
        sheet4.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '9:45-11:25') {
      if (sheet4.getRangeByName(kSaturday2).getText() == null &&
          sheet4.getRangeByName(kSaturday3).getText() == null ||
          sheet4.getRangeByName(kSaturday2).getText() == '' &&
              sheet4.getRangeByName(kSaturday3).getText() == ''
      ) {
        // add data in the following fields
        sheet4.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '11:25-1:05') {
      if (sheet4.getRangeByName(kSaturday4).getText() == null &&
          sheet4.getRangeByName(kSaturday5).getText() == null &&
          sheet4.getRangeByName(kSaturday6).getText() == null ||
          sheet4.getRangeByName(kSaturday4).getText() == '' &&
              sheet4.getRangeByName(kSaturday5).getText() == '' &&
              sheet4.getRangeByName(kSaturday6).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '1:05-2:45') {
      if (sheet4.getRangeByName(kSaturday6).getText() == null &&
          sheet4.getRangeByName(kSaturday7).getText() == null ||
          sheet4.getRangeByName(kSaturday6).getText() == '' &&
              sheet4.getRangeByName(kSaturday7).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '2:00-3:30') {
      if (sheet4.getRangeByName(kSaturday7).getText() == null &&
          sheet4.getRangeByName(kSaturday8).getText() == null ||
          sheet4.getRangeByName(kSaturday7).getText() == '' &&
              sheet4.getRangeByName(kSaturday8).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Sunday---------------------------------------
    else if (kSectionDay == 'Sunday' && kSectionTime == '9:00-10:30') {
      if (sheet4.getRangeByName(kSunday1).getText() == null &&
          sheet4.getRangeByName(kSunday2).getText() == null ||
          sheet4.getRangeByName(kSunday1).getText() == '' &&
              sheet4.getRangeByName(kSunday2).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '9:45-11:25') {
      if (sheet4.getRangeByName(kSunday2).getText() == null &&
          sheet4.getRangeByName(kSunday3).getText() == null ||
          sheet4.getRangeByName(kSunday2).getText() == '' &&
              sheet4.getRangeByName(kSunday3).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '11:25-1:05') {
      if (sheet4.getRangeByName(kSunday4).getText() == null &&
          sheet4.getRangeByName(kSunday5).getText() == null &&
          sheet4.getRangeByName(kSunday6).getText() == null ||
          sheet4.getRangeByName(kSunday4).getText() == '' &&
              sheet4.getRangeByName(kSunday5).getText() == '' &&
              sheet4.getRangeByName(kSunday6).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '1:05-2:45') {
      if (sheet4.getRangeByName(kSunday6).getText() == null &&
          sheet4.getRangeByName(kSunday7).getText() == null ||
          sheet4.getRangeByName(kSunday6).getText() == '' &&
              sheet4.getRangeByName(kSunday7).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '2:00-3:30') {
      if (sheet4.getRangeByName(kSunday7).getText() == null &&
          sheet4.getRangeByName(kSunday8).getText() == null ||
          sheet4.getRangeByName(kSunday7).getText() == '' &&
              sheet4.getRangeByName(kSunday8).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------
    else if (kSectionDay == 'Monday' && kSectionTime == '9:00-10:30') {
      if (sheet4.getRangeByName(kMonday1).getText() == null &&
          sheet4.getRangeByName(kMonday2).getText() == null ||
          sheet4.getRangeByName(kMonday1).getText() == '' &&
              sheet4.getRangeByName(kMonday2).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '9:45-11:25') {
      if (sheet4.getRangeByName(kMonday2).getText() == null &&
          sheet4.getRangeByName(kMonday3).getText() == null ||
          sheet4.getRangeByName(kMonday2).getText() == '' &&
              sheet4.getRangeByName(kMonday3).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '11:25-1:05') {
      if (sheet4.getRangeByName(kMonday4).getText() == null &&
          sheet4.getRangeByName(kMonday5).getText() == null &&
          sheet4.getRangeByName(kMonday6).getText() == null ||
          sheet4.getRangeByName(kMonday4).getText() == '' &&
              sheet4.getRangeByName(kMonday5).getText() == '' &&
              sheet4.getRangeByName(kMonday6).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '1:05-2:45') {
      if (sheet4.getRangeByName(kMonday6).getText() == null &&
          sheet4.getRangeByName(kMonday7).getText() == null ||
          sheet4.getRangeByName(kMonday6).getText() == '' &&
              sheet4.getRangeByName(kMonday7).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '2:00-3:30') {
      if (sheet4.getRangeByName(kMonday7).getText() == null &&
          sheet4.getRangeByName(kMonday8).getText() == null ||
          sheet4.getRangeByName(kMonday7).getText() == '' &&
              sheet4.getRangeByName(kMonday8).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------
    else if (kSectionDay == 'Tuesday' && kSectionTime == '9:00-10:30') {
      if (sheet4.getRangeByName(kTuesday1).getText() == null &&
          sheet4.getRangeByName(kTuesday2).getText() == null ||
          sheet4.getRangeByName(kTuesday1).getText() == '' &&
              sheet4.getRangeByName(kTuesday2).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '9:45-11:25') {
      if (sheet4.getRangeByName(kTuesday2).getText() == null &&
          sheet4.getRangeByName(kTuesday3).getText() == null ||
          sheet4.getRangeByName(kTuesday2).getText() == '' &&
              sheet4.getRangeByName(kTuesday3).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '11:25-1:05') {
      if (sheet4.getRangeByName(kTuesday4).getText() == null &&
          sheet4.getRangeByName(kTuesday5).getText() == null &&
          sheet4.getRangeByName(kTuesday6).getText() == null ||
          sheet4.getRangeByName(kTuesday4).getText() == '' &&
              sheet4.getRangeByName(kTuesday5).getText() == '' &&
              sheet4.getRangeByName(kTuesday6).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '1:05-2:45') {
      if (sheet4.getRangeByName(kTuesday6).getText() == null &&
          sheet4.getRangeByName(kTuesday7).getText() == null ||
          sheet4.getRangeByName(kTuesday6).getText() == '' &&
              sheet4.getRangeByName(kTuesday7).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '2:00-3:30') {
      if (sheet4.getRangeByName(kTuesday7).getText() == null &&
          sheet4.getRangeByName(kTuesday8).getText() == null ||
          sheet4.getRangeByName(kTuesday7).getText() == '' &&
              sheet4.getRangeByName(kTuesday8).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------
    else if (kSectionDay == 'Wednesday' && kSectionTime == '9:00-10:30') {
      if (sheet4.getRangeByName(kWednesday1).getText() == null &&
          sheet4.getRangeByName(kWednesday2).getText() == null ||
          sheet4.getRangeByName(kWednesday1).getText() == '' &&
              sheet4.getRangeByName(kWednesday2).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '9:45-11:25') {
      if (sheet4.getRangeByName(kWednesday2).getText() == null &&
          sheet4.getRangeByName(kWednesday3).getText() == null ||
          sheet4.getRangeByName(kWednesday2).getText() == '' &&
              sheet4.getRangeByName(kWednesday3).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '11:25-1:05') {
      if (sheet4.getRangeByName(kWednesday4).getText() == null &&
          sheet4.getRangeByName(kWednesday5).getText() == null &&
          sheet4.getRangeByName(kWednesday6).getText() == null ||
          sheet4.getRangeByName(kWednesday4).getText() == '' &&
              sheet4.getRangeByName(kWednesday5).getText() == '' &&
              sheet4.getRangeByName(kWednesday6).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '1:05-2:45') {
      if (sheet4.getRangeByName(kWednesday6).getText() == null &&
          sheet4.getRangeByName(kWednesday7).getText() == null ||
          sheet4.getRangeByName(kWednesday6).getText() == '' &&
              sheet4.getRangeByName(kWednesday7).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '2:00-3:30') {
      if (sheet4.getRangeByName(kWednesday7).getText() == null &&
          sheet4.getRangeByName(kWednesday8).getText() == null ||
          sheet4.getRangeByName(kWednesday7).getText() == '' &&
              sheet4.getRangeByName(kWednesday8).getText() == '') {
        // add data in the following fields
        sheet4.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet4.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else {
      print('error');
    }
  }

  ///sheet 5
  sheet5InsertLecturesAlgorithm() {
    ///----------------------------Lectures-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kLectureDay == 'Saturday' && kLectureTime == '9:00-11:25') {
      if (sheet5.getRangeByName(kSaturday1).text == null &&
          sheet5.getRangeByName(kSaturday2).text == null &&
          sheet5.getRangeByName(kSaturday3).text == null ||
          sheet5.getRangeByName(kSaturday1).text == '' &&
              sheet5.getRangeByName(kSaturday2).text == '' &&
              sheet5.getRangeByName(kSaturday3).text == ''
      ) {
        sheet5.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '11:25-1:05') {
      if (sheet5.getRangeByName(kSaturday4).getText() == null &&
          sheet5.getRangeByName(kSaturday5).getText() == null &&
          sheet5.getRangeByName(kSaturday6).getText() == null ||
          sheet5.getRangeByName(kSaturday4).getText() == '' &&
              sheet5.getRangeByName(kSaturday5).getText() == '' &&
              sheet5.getRangeByName(kSaturday6).getText() == ''

      ) {
        sheet5.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '1:05-3:30') {
      if (sheet5.getRangeByName(kSaturday6).getText() == null &&
          sheet5.getRangeByName(kSaturday7).getText() == null &&
          sheet5.getRangeByName(kSaturday8).getText() == null ||
          sheet5.getRangeByName(kSaturday6).getText() == '' &&
              sheet5.getRangeByName(kSaturday7).getText() == '' &&
              sheet5.getRangeByName(kSaturday8).getText() == ''
      ) {
        sheet5.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Sunday-------------------------------------
    else if (kLectureDay == 'Sunday' && kLectureTime == '9:00-11:25') {
      if (sheet5.getRangeByName(kSunday1).getText() == null &&
          sheet5.getRangeByName(kSunday2).getText() == null &&
          sheet5.getRangeByName(kSunday3).getText() == null ||
          sheet5.getRangeByName(kSunday1).getText() == '' &&
              sheet5.getRangeByName(kSunday2).getText() == '' &&
              sheet5.getRangeByName(kSunday3).getText() == '') {
        sheet5.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '11:25-1:05') {
      if (sheet5.getRangeByName(kSunday4).getText() == null &&
          sheet5.getRangeByName(kSunday5).getText() == null &&
          sheet5.getRangeByName(kSunday6).getText() == null ||
          sheet5.getRangeByName(kSunday4).getText() == '' &&
              sheet5.getRangeByName(kSunday5).getText() == '' &&
              sheet5.getRangeByName(kSunday6).getText() == '') {
        sheet5.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '1:05-3:30') {
      if (sheet5.getRangeByName(kSunday6).getText() == null &&
          sheet5.getRangeByName(kSunday7).getText() == null &&
          sheet5.getRangeByName(kSunday8).getText() == null ||
          sheet5.getRangeByName(kSunday6).getText() == '' &&
              sheet5.getRangeByName(kSunday7).getText() == '' &&
              sheet5.getRangeByName(kSunday8).getText() == '') {
        sheet5.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------

    else if (kLectureDay == 'Monday' && kLectureTime == '9:00-11:25') {
      if (sheet5.getRangeByName(kMonday1).getText() == null &&
          sheet5.getRangeByName(kMonday2).getText() == null &&
          sheet5.getRangeByName(kMonday3).getText() == null ||
          sheet5.getRangeByName(kMonday1).getText() == '' &&
              sheet5.getRangeByName(kMonday2).getText() == '' &&
              sheet5.getRangeByName(kMonday3).getText() == '') {
        sheet5.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '11:25-1:05') {
      if (sheet5.getRangeByName(kMonday4).getText() == null &&
          sheet5.getRangeByName(kMonday5).getText() == null &&
          sheet5.getRangeByName(kMonday6).getText() == null ||
          sheet5.getRangeByName(kMonday4).getText() == '' &&
              sheet5.getRangeByName(kMonday5).getText() == '' &&
              sheet5.getRangeByName(kMonday6).getText() == '') {
        sheet5.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '1:05-3:30') {
      if (sheet5.getRangeByName(kMonday6).getText() == null &&
          sheet5.getRangeByName(kMonday7).getText() == null &&
          sheet5.getRangeByName(kMonday8).getText() == null ||
          sheet5.getRangeByName(kMonday6).getText() == '' &&
              sheet5.getRangeByName(kMonday7).getText() == '' &&
              sheet5.getRangeByName(kMonday8).getText() == '') {
        sheet5.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------

    else if (kLectureDay == 'Tuesday' && kLectureTime == '9:00-11:25') {
      if (sheet5.getRangeByName(kTuesday1).getText() == null &&
          sheet5.getRangeByName(kTuesday2).getText() == null &&
          sheet5.getRangeByName(kTuesday3).getText() == null ||
          sheet5.getRangeByName(kTuesday1).getText() == '' &&
              sheet5.getRangeByName(kTuesday2).getText() == '' &&
              sheet5.getRangeByName(kTuesday3).getText() == '') {
        sheet5.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '11:25-1:05') {
      if (sheet5.getRangeByName(kTuesday4).getText() == null &&
          sheet5.getRangeByName(kTuesday5).getText() == null &&
          sheet5.getRangeByName(kTuesday6).getText() == null ||
          sheet5.getRangeByName(kTuesday4).getText() == '' &&
              sheet5.getRangeByName(kTuesday5).getText() == '' &&
              sheet5.getRangeByName(kTuesday6).getText() == '') {
        sheet5.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '1:05-3:30') {
      if (sheet5.getRangeByName(kTuesday6).getText() == null &&
          sheet5.getRangeByName(kTuesday7).getText() == null &&
          sheet5.getRangeByName(kTuesday8).getText() == null ||
          sheet5.getRangeByName(kTuesday6).getText() == '' &&
              sheet5.getRangeByName(kTuesday7).getText() == '' &&
              sheet5.getRangeByName(kTuesday8).getText() == '') {
        sheet5.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------

    else if (kLectureDay == 'Wednesday' && kLectureTime == '9:00-11:25') {
      if (sheet5.getRangeByName(kWednesday1).getText() == null &&
          sheet5.getRangeByName(kWednesday2).getText() == null &&
          sheet5.getRangeByName(kWednesday3).getText() == null ||
          sheet5.getRangeByName(kWednesday1).getText() == '' &&
              sheet5.getRangeByName(kWednesday2).getText() == '' &&
              sheet5.getRangeByName(kWednesday3).getText() == '') {
        sheet5.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '11:25-1:05') {
      if (sheet5.getRangeByName(kWednesday4).getText() == null &&
          sheet5.getRangeByName(kWednesday5).getText() == null &&
          sheet5.getRangeByName(kWednesday6).getText() == null ||
          sheet5.getRangeByName(kWednesday4).getText() == '' &&
              sheet5.getRangeByName(kWednesday5).getText() == '' &&
              sheet5.getRangeByName(kWednesday6).getText() == '') {
        sheet5.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '1:05-3:30') {
      if (sheet5.getRangeByName(kWednesday6).getText() == null &&
          sheet5.getRangeByName(kWednesday7).getText() == null &&
          sheet5.getRangeByName(kWednesday8).getText() == null ||
          sheet5.getRangeByName(kWednesday6).getText() == '' &&
              sheet5.getRangeByName(kWednesday7).getText() == '' &&
              sheet5.getRangeByName(kWednesday8).getText() == '') {
        sheet5.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Thrusday-------------------------------------

    else if (kLectureDay == 'Thrusday' && kLectureTime == '9:00-11:25') {
      if (sheet5.getRangeByName(kThrusday1).getText() == null &&
          sheet5.getRangeByName(kThrusday2).getText() == null &&
          sheet5.getRangeByName(kThrusday3).getText() == null ||
          sheet5.getRangeByName(kThrusday1).getText() == '' &&
              sheet5.getRangeByName(kThrusday2).getText() == '' &&
              sheet5.getRangeByName(kThrusday3).getText() == '') {
        sheet5.getRangeByName(kThrusday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kThrusday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kThrusday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '11:25-1:05') {
      if (sheet5.getRangeByName(kThrusday4).getText() == null &&
          sheet5.getRangeByName(kThrusday5).getText() == null &&
          sheet5.getRangeByName(kThrusday6).getText() == null ||
          sheet5.getRangeByName(kThrusday4).getText() == '' &&
              sheet5.getRangeByName(kThrusday5).getText() == '' &&
              sheet5.getRangeByName(kThrusday6).getText() == '') {
        sheet5.getRangeByName(kThrusday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kThrusday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '1:05-3:30') {
      if (sheet5.getRangeByName(kThrusday6).getText() == null &&
          sheet5.getRangeByName(kThrusday7).getText() == null &&
          sheet5.getRangeByName(kThrusday8).getText() == null ||
          sheet5.getRangeByName(kThrusday6).getText() == '' &&
              sheet5.getRangeByName(kThrusday7).getText() == '' &&
              sheet5.getRangeByName(kThrusday8).getText() == '') {
        sheet5.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kThrusday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet5.getRangeByName(kThrusday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else {
      print('error');
    }
  }
  sheet5InsertSectionAlgorithm() {
    ///----------------------------Sections-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kSectionDay == 'Saturday' && kSectionTime == '9:00-10:30') {
      if (sheet5.getRangeByName(kSaturday1).getText() == null &&
          sheet5.getRangeByName(kSaturday2).getText() == null ||
          sheet5.getRangeByName(kSaturday1).getText() == '' &&
              sheet5.getRangeByName(kSaturday2).getText() == ''

      ) {
        // add data in the following fields
        sheet5.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '9:45-11:25') {
      if (sheet5.getRangeByName(kSaturday2).getText() == null &&
          sheet5.getRangeByName(kSaturday3).getText() == null ||
          sheet5.getRangeByName(kSaturday2).getText() == '' &&
              sheet5.getRangeByName(kSaturday3).getText() == ''
      ) {
        // add data in the following fields
        sheet5.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '11:25-1:05') {
      if (sheet5.getRangeByName(kSaturday4).getText() == null &&
          sheet5.getRangeByName(kSaturday5).getText() == null &&
          sheet5.getRangeByName(kSaturday6).getText() == null ||
          sheet5.getRangeByName(kSaturday4).getText() == '' &&
              sheet5.getRangeByName(kSaturday5).getText() == '' &&
              sheet5.getRangeByName(kSaturday6).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '1:05-2:45') {
      if (sheet5.getRangeByName(kSaturday6).getText() == null &&
          sheet5.getRangeByName(kSaturday7).getText() == null ||
          sheet5.getRangeByName(kSaturday6).getText() == '' &&
              sheet5.getRangeByName(kSaturday7).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '2:00-3:30') {
      if (sheet5.getRangeByName(kSaturday7).getText() == null &&
          sheet5.getRangeByName(kSaturday8).getText() == null ||
          sheet5.getRangeByName(kSaturday7).getText() == '' &&
              sheet5.getRangeByName(kSaturday8).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Sunday---------------------------------------
    else if (kSectionDay == 'Sunday' && kSectionTime == '9:00-10:30') {
      if (sheet5.getRangeByName(kSunday1).getText() == null &&
          sheet5.getRangeByName(kSunday2).getText() == null ||
          sheet5.getRangeByName(kSunday1).getText() == '' &&
              sheet5.getRangeByName(kSunday2).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '9:45-11:25') {
      if (sheet5.getRangeByName(kSunday2).getText() == null &&
          sheet5.getRangeByName(kSunday3).getText() == null ||
          sheet5.getRangeByName(kSunday2).getText() == '' &&
              sheet5.getRangeByName(kSunday3).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '11:25-1:05') {
      if (sheet5.getRangeByName(kSunday4).getText() == null &&
          sheet5.getRangeByName(kSunday5).getText() == null &&
          sheet5.getRangeByName(kSunday6).getText() == null ||
          sheet5.getRangeByName(kSunday4).getText() == '' &&
              sheet5.getRangeByName(kSunday5).getText() == '' &&
              sheet5.getRangeByName(kSunday6).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '1:05-2:45') {
      if (sheet5.getRangeByName(kSunday6).getText() == null &&
          sheet5.getRangeByName(kSunday7).getText() == null ||
          sheet5.getRangeByName(kSunday6).getText() == '' &&
              sheet5.getRangeByName(kSunday7).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '2:00-3:30') {
      if (sheet5.getRangeByName(kSunday7).getText() == null &&
          sheet5.getRangeByName(kSunday8).getText() == null ||
          sheet5.getRangeByName(kSunday7).getText() == '' &&
              sheet5.getRangeByName(kSunday8).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------
    else if (kSectionDay == 'Monday' && kSectionTime == '9:00-10:30') {
      if (sheet5.getRangeByName(kMonday1).getText() == null &&
          sheet5.getRangeByName(kMonday2).getText() == null ||
          sheet5.getRangeByName(kMonday1).getText() == '' &&
              sheet5.getRangeByName(kMonday2).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '9:45-11:25') {
      if (sheet5.getRangeByName(kMonday2).getText() == null &&
          sheet5.getRangeByName(kMonday3).getText() == null ||
          sheet5.getRangeByName(kMonday2).getText() == '' &&
              sheet5.getRangeByName(kMonday3).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '11:25-1:05') {
      if (sheet5.getRangeByName(kMonday4).getText() == null &&
          sheet5.getRangeByName(kMonday5).getText() == null &&
          sheet5.getRangeByName(kMonday6).getText() == null ||
          sheet5.getRangeByName(kMonday4).getText() == '' &&
              sheet5.getRangeByName(kMonday5).getText() == '' &&
              sheet5.getRangeByName(kMonday6).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '1:05-2:45') {
      if (sheet5.getRangeByName(kMonday6).getText() == null &&
          sheet5.getRangeByName(kMonday7).getText() == null ||
          sheet5.getRangeByName(kMonday6).getText() == '' &&
              sheet5.getRangeByName(kMonday7).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '2:00-3:30') {
      if (sheet5.getRangeByName(kMonday7).getText() == null &&
          sheet5.getRangeByName(kMonday8).getText() == null ||
          sheet5.getRangeByName(kMonday7).getText() == '' &&
              sheet5.getRangeByName(kMonday8).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------
    else if (kSectionDay == 'Tuesday' && kSectionTime == '9:00-10:30') {
      if (sheet5.getRangeByName(kTuesday1).getText() == null &&
          sheet5.getRangeByName(kTuesday2).getText() == null ||
          sheet5.getRangeByName(kTuesday1).getText() == '' &&
              sheet5.getRangeByName(kTuesday2).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '9:45-11:25') {
      if (sheet5.getRangeByName(kTuesday2).getText() == null &&
          sheet5.getRangeByName(kTuesday3).getText() == null ||
          sheet5.getRangeByName(kTuesday2).getText() == '' &&
              sheet5.getRangeByName(kTuesday3).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '11:25-1:05') {
      if (sheet5.getRangeByName(kTuesday4).getText() == null &&
          sheet5.getRangeByName(kTuesday5).getText() == null &&
          sheet5.getRangeByName(kTuesday6).getText() == null ||
          sheet5.getRangeByName(kTuesday4).getText() == '' &&
              sheet5.getRangeByName(kTuesday5).getText() == '' &&
              sheet5.getRangeByName(kTuesday6).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '1:05-2:45') {
      if (sheet5.getRangeByName(kTuesday6).getText() == null &&
          sheet5.getRangeByName(kTuesday7).getText() == null ||
          sheet5.getRangeByName(kTuesday6).getText() == '' &&
              sheet5.getRangeByName(kTuesday7).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '2:00-3:30') {
      if (sheet5.getRangeByName(kTuesday7).getText() == null &&
          sheet5.getRangeByName(kTuesday8).getText() == null ||
          sheet5.getRangeByName(kTuesday7).getText() == '' &&
              sheet5.getRangeByName(kTuesday8).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------
    else if (kSectionDay == 'Wednesday' && kSectionTime == '9:00-10:30') {
      if (sheet5.getRangeByName(kWednesday1).getText() == null &&
          sheet5.getRangeByName(kWednesday2).getText() == null ||
          sheet5.getRangeByName(kWednesday1).getText() == '' &&
              sheet5.getRangeByName(kWednesday2).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '9:45-11:25') {
      if (sheet5.getRangeByName(kWednesday2).getText() == null &&
          sheet5.getRangeByName(kWednesday3).getText() == null ||
          sheet5.getRangeByName(kWednesday2).getText() == '' &&
              sheet5.getRangeByName(kWednesday3).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '11:25-1:05') {
      if (sheet5.getRangeByName(kWednesday4).getText() == null &&
          sheet5.getRangeByName(kWednesday5).getText() == null &&
          sheet5.getRangeByName(kWednesday6).getText() == null ||
          sheet5.getRangeByName(kWednesday4).getText() == '' &&
              sheet5.getRangeByName(kWednesday5).getText() == '' &&
              sheet5.getRangeByName(kWednesday6).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '1:05-2:45') {
      if (sheet5.getRangeByName(kWednesday6).getText() == null &&
          sheet5.getRangeByName(kWednesday7).getText() == null ||
          sheet5.getRangeByName(kWednesday6).getText() == '' &&
              sheet5.getRangeByName(kWednesday7).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '2:00-3:30') {
      if (sheet5.getRangeByName(kWednesday7).getText() == null &&
          sheet5.getRangeByName(kWednesday8).getText() == null ||
          sheet5.getRangeByName(kWednesday7).getText() == '' &&
              sheet5.getRangeByName(kWednesday8).getText() == '') {
        // add data in the following fields
        sheet5.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet5.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else {
      print('error');
    }
  }

  ///sheet 6
  sheet6InsertLecturesAlgorithm() {
    ///----------------------------Lectures-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kLectureDay == 'Saturday' && kLectureTime == '9:00-11:25') {
      if (sheet6.getRangeByName(kSaturday1).text == null &&
          sheet6.getRangeByName(kSaturday2).text == null &&
          sheet6.getRangeByName(kSaturday3).text == null ||
          sheet6.getRangeByName(kSaturday1).text == '' &&
              sheet6.getRangeByName(kSaturday2).text == '' &&
              sheet6.getRangeByName(kSaturday3).text == ''
      ) {
        sheet6.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '11:25-1:05') {
      if (sheet6.getRangeByName(kSaturday4).getText() == null &&
          sheet6.getRangeByName(kSaturday5).getText() == null &&
          sheet6.getRangeByName(kSaturday6).getText() == null ||
          sheet6.getRangeByName(kSaturday4).getText() == '' &&
              sheet6.getRangeByName(kSaturday5).getText() == '' &&
              sheet6.getRangeByName(kSaturday6).getText() == ''

      ) {
        sheet6.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Saturday' && kLectureTime == '1:05-3:30') {
      if (sheet6.getRangeByName(kSaturday6).getText() == null &&
          sheet6.getRangeByName(kSaturday7).getText() == null &&
          sheet6.getRangeByName(kSaturday8).getText() == null ||
          sheet6.getRangeByName(kSaturday6).getText() == '' &&
              sheet6.getRangeByName(kSaturday7).getText() == '' &&
              sheet6.getRangeByName(kSaturday8).getText() == ''
      ) {
        sheet6.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Sunday-------------------------------------
    else if (kLectureDay == 'Sunday' && kLectureTime == '9:00-11:25') {
      if (sheet6.getRangeByName(kSunday1).getText() == null &&
          sheet6.getRangeByName(kSunday2).getText() == null &&
          sheet6.getRangeByName(kSunday3).getText() == null ||
          sheet6.getRangeByName(kSunday1).getText() == '' &&
              sheet6.getRangeByName(kSunday2).getText() == '' &&
              sheet6.getRangeByName(kSunday3).getText() == '') {
        sheet6.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kMessage = 'Registration Done';
        kLectureAndSectionCheck = true;
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '11:25-1:05') {
      if (sheet6.getRangeByName(kSunday4).getText() == null &&
          sheet6.getRangeByName(kSunday5).getText() == null &&
          sheet6.getRangeByName(kSunday6).getText() == null ||
          sheet6.getRangeByName(kSunday4).getText() == '' &&
              sheet6.getRangeByName(kSunday5).getText() == '' &&
              sheet6.getRangeByName(kSunday6).getText() == '') {
        sheet6.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Sunday' && kLectureTime == '1:05-3:30') {
      if (sheet6.getRangeByName(kSunday6).getText() == null &&
          sheet6.getRangeByName(kSunday7).getText() == null &&
          sheet6.getRangeByName(kSunday8).getText() == null ||
          sheet6.getRangeByName(kSunday6).getText() == '' &&
              sheet6.getRangeByName(kSunday7).getText() == '' &&
              sheet6.getRangeByName(kSunday8).getText() == '') {
        sheet6.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------

    else if (kLectureDay == 'Monday' && kLectureTime == '9:00-11:25') {
      if (sheet6.getRangeByName(kMonday1).getText() == null &&
          sheet6.getRangeByName(kMonday2).getText() == null &&
          sheet6.getRangeByName(kMonday3).getText() == null ||
          sheet6.getRangeByName(kMonday1).getText() == '' &&
              sheet6.getRangeByName(kMonday2).getText() == '' &&
              sheet6.getRangeByName(kMonday3).getText() == '') {
        sheet6.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '11:25-1:05') {
      if (sheet6.getRangeByName(kMonday4).getText() == null &&
          sheet6.getRangeByName(kMonday5).getText() == null &&
          sheet6.getRangeByName(kMonday6).getText() == null ||
          sheet6.getRangeByName(kMonday4).getText() == '' &&
              sheet6.getRangeByName(kMonday5).getText() == '' &&
              sheet6.getRangeByName(kMonday6).getText() == '') {
        sheet6.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Monday' && kLectureTime == '1:05-3:30') {
      if (sheet6.getRangeByName(kMonday6).getText() == null &&
          sheet6.getRangeByName(kMonday7).getText() == null &&
          sheet6.getRangeByName(kMonday8).getText() == null ||
          sheet6.getRangeByName(kMonday6).getText() == '' &&
              sheet6.getRangeByName(kMonday7).getText() == '' &&
              sheet6.getRangeByName(kMonday8).getText() == '') {
        sheet6.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------

    else if (kLectureDay == 'Tuesday' && kLectureTime == '9:00-11:25') {
      if (sheet6.getRangeByName(kTuesday1).getText() == null &&
          sheet6.getRangeByName(kTuesday2).getText() == null &&
          sheet6.getRangeByName(kTuesday3).getText() == null ||
          sheet6.getRangeByName(kTuesday1).getText() == '' &&
              sheet6.getRangeByName(kTuesday2).getText() == '' &&
              sheet6.getRangeByName(kTuesday3).getText() == '') {
        sheet6.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '11:25-1:05') {
      if (sheet6.getRangeByName(kTuesday4).getText() == null &&
          sheet6.getRangeByName(kTuesday5).getText() == null &&
          sheet6.getRangeByName(kTuesday6).getText() == null ||
          sheet6.getRangeByName(kTuesday4).getText() == '' &&
              sheet6.getRangeByName(kTuesday5).getText() == '' &&
              sheet6.getRangeByName(kTuesday6).getText() == '') {
        sheet6.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Tuesday' && kLectureTime == '1:05-3:30') {
      if (sheet6.getRangeByName(kTuesday6).getText() == null &&
          sheet6.getRangeByName(kTuesday7).getText() == null &&
          sheet6.getRangeByName(kTuesday8).getText() == null ||
          sheet6.getRangeByName(kTuesday6).getText() == '' &&
              sheet6.getRangeByName(kTuesday7).getText() == '' &&
              sheet6.getRangeByName(kTuesday8).getText() == '') {
        sheet6.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------

    else if (kLectureDay == 'Wednesday' && kLectureTime == '9:00-11:25') {
      if (sheet6.getRangeByName(kWednesday1).getText() == null &&
          sheet6.getRangeByName(kWednesday2).getText() == null &&
          sheet6.getRangeByName(kWednesday3).getText() == null ||
          sheet6.getRangeByName(kWednesday1).getText() == '' &&
              sheet6.getRangeByName(kWednesday2).getText() == '' &&
              sheet6.getRangeByName(kWednesday3).getText() == '') {
        sheet6.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '11:25-1:05') {
      if (sheet6.getRangeByName(kWednesday4).getText() == null &&
          sheet6.getRangeByName(kWednesday5).getText() == null &&
          sheet6.getRangeByName(kWednesday6).getText() == null ||
          sheet6.getRangeByName(kWednesday4).getText() == '' &&
              sheet6.getRangeByName(kWednesday5).getText() == '' &&
              sheet6.getRangeByName(kWednesday6).getText() == '') {
        sheet6.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Wednesday' && kLectureTime == '1:05-3:30') {
      if (sheet6.getRangeByName(kWednesday6).getText() == null &&
          sheet6.getRangeByName(kWednesday7).getText() == null &&
          sheet6.getRangeByName(kWednesday8).getText() == null ||
          sheet6.getRangeByName(kWednesday6).getText() == '' &&
              sheet6.getRangeByName(kWednesday7).getText() == '' &&
              sheet6.getRangeByName(kWednesday8).getText() == '') {
        sheet6.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    }

    ///----------------------------Thrusday-------------------------------------

    else if (kLectureDay == 'Thrusday' && kLectureTime == '9:00-11:25') {
      if (sheet6.getRangeByName(kThrusday1).getText() == null &&
          sheet6.getRangeByName(kThrusday2).getText() == null &&
          sheet6.getRangeByName(kThrusday3).getText() == null ||
          sheet6.getRangeByName(kThrusday1).getText() == '' &&
              sheet6.getRangeByName(kThrusday2).getText() == '' &&
              sheet6.getRangeByName(kThrusday3).getText() == '') {
        sheet6.getRangeByName(kThrusday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kThrusday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kThrusday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '11:25-1:05') {
      if (sheet6.getRangeByName(kThrusday4).getText() == null &&
          sheet6.getRangeByName(kThrusday5).getText() == null &&
          sheet6.getRangeByName(kThrusday6).getText() == null ||
          sheet6.getRangeByName(kThrusday4).getText() == '' &&
              sheet6.getRangeByName(kThrusday5).getText() == '' &&
              sheet6.getRangeByName(kThrusday6).getText() == '') {
        sheet6.getRangeByName(kThrusday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kThrusday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else if (kLectureDay == 'Thrusday' && kLectureTime == '1:05-3:30') {
      if (sheet6.getRangeByName(kThrusday6).getText() == null &&
          sheet6.getRangeByName(kThrusday7).getText() == null &&
          sheet6.getRangeByName(kThrusday8).getText() == null ||
          sheet6.getRangeByName(kThrusday6).getText() == '' &&
              sheet6.getRangeByName(kThrusday7).getText() == '' &&
              sheet6.getRangeByName(kThrusday8).getText() == '') {
        sheet6.getRangeByName(kThrusday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kThrusday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        sheet6.getRangeByName(kThrusday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n ${kHallLecturesValue.toString()}';
        kLectureAndSectionCheck = true;
        kMessage = 'Registration Done';
        print('done');
      } else {
        print('error occured');
      }
    } else {
      print('error');
    }
  }
  sheet6InsertSectionAlgorithm() {
    ///----------------------------Sections-------------------------------------
    ///----------------------------Saturday-------------------------------------
    if (kSectionDay == 'Saturday' && kSectionTime == '9:00-10:30') {
      if (sheet6.getRangeByName(kSaturday1).getText() == null &&
          sheet6.getRangeByName(kSaturday2).getText() == null ||
          sheet6.getRangeByName(kSaturday1).getText() == '' &&
              sheet6.getRangeByName(kSaturday2).getText() == ''

      ) {
        // add data in the following fields
        sheet6.getRangeByName(kSaturday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '9:45-11:25') {
      if (sheet6.getRangeByName(kSaturday2).getText() == null &&
          sheet6.getRangeByName(kSaturday3).getText() == null ||
          sheet6.getRangeByName(kSaturday2).getText() == '' &&
              sheet6.getRangeByName(kSaturday3).getText() == ''
      ) {
        // add data in the following fields
        sheet6.getRangeByName(kSaturday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSaturday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '11:25-1:05') {
      if (sheet6.getRangeByName(kSaturday4).getText() == null &&
          sheet6.getRangeByName(kSaturday5).getText() == null &&
          sheet6.getRangeByName(kSaturday6).getText() == null ||
          sheet6.getRangeByName(kSaturday4).getText() == '' &&
              sheet6.getRangeByName(kSaturday5).getText() == '' &&
              sheet6.getRangeByName(kSaturday6).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kSaturday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSaturday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '1:05-2:45') {
      if (sheet6.getRangeByName(kSaturday6).getText() == null &&
          sheet6.getRangeByName(kSaturday7).getText() == null ||
          sheet6.getRangeByName(kSaturday6).getText() == '' &&
              sheet6.getRangeByName(kSaturday7).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kSaturday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Saturday' && kSectionTime == '2:00-3:30') {
      if (sheet6.getRangeByName(kSaturday7).getText() == null &&
          sheet6.getRangeByName(kSaturday8).getText() == null ||
          sheet6.getRangeByName(kSaturday7).getText() == '' &&
              sheet6.getRangeByName(kSaturday8).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kSaturday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSaturday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Sunday---------------------------------------
    else if (kSectionDay == 'Sunday' && kSectionTime == '9:00-10:30') {
      if (sheet6.getRangeByName(kSunday1).getText() == null &&
          sheet6.getRangeByName(kSunday2).getText() == null ||
          sheet6.getRangeByName(kSunday1).getText() == '' &&
              sheet6.getRangeByName(kSunday2).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kSunday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occurred');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '9:45-11:25') {
      if (sheet6.getRangeByName(kSunday2).getText() == null &&
          sheet6.getRangeByName(kSunday3).getText() == null ||
          sheet6.getRangeByName(kSunday2).getText() == '' &&
              sheet6.getRangeByName(kSunday3).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kSunday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSunday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';
        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '11:25-1:05') {
      if (sheet6.getRangeByName(kSunday4).getText() == null &&
          sheet6.getRangeByName(kSunday5).getText() == null &&
          sheet6.getRangeByName(kSunday6).getText() == null ||
          sheet6.getRangeByName(kSunday4).getText() == '' &&
              sheet6.getRangeByName(kSunday5).getText() == '' &&
              sheet6.getRangeByName(kSunday6).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kSunday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSunday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '1:05-2:45') {
      if (sheet6.getRangeByName(kSunday6).getText() == null &&
          sheet6.getRangeByName(kSunday7).getText() == null ||
          sheet6.getRangeByName(kSunday6).getText() == '' &&
              sheet6.getRangeByName(kSunday7).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kSunday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Sunday' && kSectionTime == '2:00-3:30') {
      if (sheet6.getRangeByName(kSunday7).getText() == null &&
          sheet6.getRangeByName(kSunday8).getText() == null ||
          sheet6.getRangeByName(kSunday7).getText() == '' &&
              sheet6.getRangeByName(kSunday8).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kSunday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kSunday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Monday---------------------------------------
    else if (kSectionDay == 'Monday' && kSectionTime == '9:00-10:30') {
      if (sheet6.getRangeByName(kMonday1).getText() == null &&
          sheet6.getRangeByName(kMonday2).getText() == null ||
          sheet6.getRangeByName(kMonday1).getText() == '' &&
              sheet6.getRangeByName(kMonday2).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kMonday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '9:45-11:25') {
      if (sheet6.getRangeByName(kMonday2).getText() == null &&
          sheet6.getRangeByName(kMonday3).getText() == null ||
          sheet6.getRangeByName(kMonday2).getText() == '' &&
              sheet6.getRangeByName(kMonday3).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kMonday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kMonday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '11:25-1:05') {
      if (sheet6.getRangeByName(kMonday4).getText() == null &&
          sheet6.getRangeByName(kMonday5).getText() == null &&
          sheet6.getRangeByName(kMonday6).getText() == null ||
          sheet6.getRangeByName(kMonday4).getText() == '' &&
              sheet6.getRangeByName(kMonday5).getText() == '' &&
              sheet6.getRangeByName(kMonday6).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kMonday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kMonday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '1:05-2:45') {
      if (sheet6.getRangeByName(kMonday6).getText() == null &&
          sheet6.getRangeByName(kMonday7).getText() == null ||
          sheet6.getRangeByName(kMonday6).getText() == '' &&
              sheet6.getRangeByName(kMonday7).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kMonday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Monday' && kSectionTime == '2:00-3:30') {
      if (sheet6.getRangeByName(kMonday7).getText() == null &&
          sheet6.getRangeByName(kMonday8).getText() == null ||
          sheet6.getRangeByName(kMonday7).getText() == '' &&
              sheet6.getRangeByName(kMonday8).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kMonday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kMonday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Tuesday--------------------------------------
    else if (kSectionDay == 'Tuesday' && kSectionTime == '9:00-10:30') {
      if (sheet6.getRangeByName(kTuesday1).getText() == null &&
          sheet6.getRangeByName(kTuesday2).getText() == null ||
          sheet6.getRangeByName(kTuesday1).getText() == '' &&
              sheet6.getRangeByName(kTuesday2).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kTuesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '9:45-11:25') {
      if (sheet6.getRangeByName(kTuesday2).getText() == null &&
          sheet6.getRangeByName(kTuesday3).getText() == null ||
          sheet6.getRangeByName(kTuesday2).getText() == '' &&
              sheet6.getRangeByName(kTuesday3).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kTuesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kTuesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '11:25-1:05') {
      if (sheet6.getRangeByName(kTuesday4).getText() == null &&
          sheet6.getRangeByName(kTuesday5).getText() == null &&
          sheet6.getRangeByName(kTuesday6).getText() == null ||
          sheet6.getRangeByName(kTuesday4).getText() == '' &&
              sheet6.getRangeByName(kTuesday5).getText() == '' &&
              sheet6.getRangeByName(kTuesday6).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kTuesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kTuesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '1:05-2:45') {
      if (sheet6.getRangeByName(kTuesday6).getText() == null &&
          sheet6.getRangeByName(kTuesday7).getText() == null ||
          sheet6.getRangeByName(kTuesday6).getText() == '' &&
              sheet6.getRangeByName(kTuesday7).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kTuesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Tuesday' && kSectionTime == '2:00-3:30') {
      if (sheet6.getRangeByName(kTuesday7).getText() == null &&
          sheet6.getRangeByName(kTuesday8).getText() == null ||
          sheet6.getRangeByName(kTuesday7).getText() == '' &&
              sheet6.getRangeByName(kTuesday8).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kTuesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kTuesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    }

    ///----------------------------Wednesday------------------------------------
    else if (kSectionDay == 'Wednesday' && kSectionTime == '9:00-10:30') {
      if (sheet6.getRangeByName(kWednesday1).getText() == null &&
          sheet6.getRangeByName(kWednesday2).getText() == null ||
          sheet6.getRangeByName(kWednesday1).getText() == '' &&
              sheet6.getRangeByName(kWednesday2).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kWednesday1).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occurred');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '9:45-11:25') {
      if (sheet6.getRangeByName(kWednesday2).getText() == null &&
          sheet6.getRangeByName(kWednesday3).getText() == null ||
          sheet6.getRangeByName(kWednesday2).getText() == '' &&
              sheet6.getRangeByName(kWednesday3).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kWednesday2).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kWednesday3).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '11:25-1:05') {
      if (sheet6.getRangeByName(kWednesday4).getText() == null &&
          sheet6.getRangeByName(kWednesday5).getText() == null &&
          sheet6.getRangeByName(kWednesday6).getText() == null ||
          sheet6.getRangeByName(kWednesday4).getText() == '' &&
              sheet6.getRangeByName(kWednesday5).getText() == '' &&
              sheet6.getRangeByName(kWednesday6).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kWednesday4).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kWednesday5).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '1:05-2:45') {
      if (sheet6.getRangeByName(kWednesday6).getText() == null &&
          sheet6.getRangeByName(kWednesday7).getText() == null ||
          sheet6.getRangeByName(kWednesday6).getText() == '' &&
              sheet6.getRangeByName(kWednesday7).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kWednesday6).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else if (kSectionDay == 'Wednesday' && kSectionTime == '2:00-3:30') {
      if (sheet6.getRangeByName(kWednesday7).getText() == null &&
          sheet6.getRangeByName(kWednesday8).getText() == null ||
          sheet6.getRangeByName(kWednesday7).getText() == '' &&
              sheet6.getRangeByName(kWednesday8).getText() == '') {
        // add data in the following fields
        sheet6.getRangeByName(kWednesday7).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        sheet6.getRangeByName(kWednesday8).text =
        '${kSubjectController.text} \n${kSubjectCodeController.text} \n M${kHallSectionValue.toString()}';
        print('done');
      } else {
        kMessage = 'overlapped';

        print('error occured');
      }
    } else {
      print('error');
    }
  }

  ///exam sheet

  void insertExamExcelSheetData(subjectCode,subjectName,numberOfStudents,examDay,examTime,examHall,firstName,secondName){
    examSheet.getRangeByName('A$examSheetIndex').text = subjectCode.toString();
    examSheet.getRangeByName('B$examSheetIndex').text = subjectName.toString();
    examSheet.getRangeByName('C$examSheetIndex').text = numberOfStudents.toString();
    examSheet.getRangeByName('D$examSheetIndex').text = examDay.toString();
    examSheet.getRangeByName('E$examSheetIndex').text = examTime.toString();
    examSheet.getRangeByName('F$examSheetIndex').text = examHall.toString();
    examSheet.getRangeByName('G$examSheetIndex').text = '${firstName.toString()} \n${secondName.toString()}';
  }

}