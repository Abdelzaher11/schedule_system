import 'package:hti_graduation_project/constants/variables.dart';

class LectureSectionDurationSwitchCase{
  void lectureDurationSwitchCase(time){
    switch (time){
      case '9:00-11:25':
        kFirstDurationLectureValue = '9:00-9:45';
        kSecondDurationLectureValue = '9:45-10:30';
        kThirdDurationLectureValue = '10:40-11:25';
        break;
      case '11:25-1:05':
        kFirstDurationLectureValue = '11:25-12:10';
        kSecondDurationLectureValue = '12:20-1:05';
        kThirdDurationLectureValue = '1:05-1:50';
        break;
      case '1:05-3:30':
        kFirstDurationLectureValue = '1:05-1:50';
        kSecondDurationLectureValue = '2:00-2:45';
        kThirdDurationLectureValue = '2:45-3:00';
        break;
    }
  }
  // ignore: non_constant_identifier_names
  void sectionDurationSwitchCase(time){
    switch (time){
      case '9:00-10:30':
        kFirstDurationSectionValue = '9:00-9:45';
        kSecondDurationSectionValue = '9:45-10:30';
        break;
      case '9:45-11:25':
        kFirstDurationSectionValue = '9:45-10:30';
        kSecondDurationSectionValue = '10:40-11:25';
        break;
      case '11:25-1:05':
        kFirstDurationSectionValue = '11:25-12:10';
        kSecondDurationSectionValue = '12:20-1:05';
        break;
      case '1:05-2:45':
        kFirstDurationSectionValue = '1:05-1:50';
        kSecondDurationSectionValue = '2:00-2:45';
        break;
      case '2:00-3:30':
        kFirstDurationSectionValue = '2:00-2:45';
        kSecondDurationSectionValue = '2:45-3:30';
        break;
    }
  }
}