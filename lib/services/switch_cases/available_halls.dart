import 'package:hti_graduation_project/constants/variables.dart';

class AvailableRooms{
  void lectureHallSwitch(title){
    switch (title){
      case 'first case':
         kHallLecturesList = [
           '101',
           '102',
           '103',
           '104',
           '105',
           '106',
           '107',
           '108',
           '109',
           '110'
        ];
         kHallSectionList = [
           '101',
           '102',
           '103',
           '104',
           '105',
           '106',
           '107',
           '108',
           '109',
           '110'
         ];
        break;
      case 'second case':
         kHallLecturesList = [
           '204',
           '205',
           '206',
           '207',
           '208',
           '209',
        ];

         kHallSectionList = [
           '204',
           '205',
           '206',
           '207',
           '208',
           '209',
        ];
        break;
      case 'third case':
        kHallLecturesList = [
          '210',
          '211',
          '212',
          '213',
          '214',
          '215',
        ];

         kHallSectionList = [
          '210',
          '211',
          '212',
          '213',
          '214',
          '215',
        ];
        break;
    }
  }
  
  void midtermExamHallSwitch(title){
    switch (title){
      case 'first case':
        kExamHallList = [
          '101',
          '102',
          '103',
          '104',
          '105',
          '106',
          '107',
          '108',
          '109',
          '110'
        ];
        break;
      case 'second case':
        kExamHallList = [
          '204',
          '205',
          '206',
          '207',
          '208',
          '209',
        ];
        break;
      case 'third case':
        kExamHallList = [
          '210',
          '211',
          '212',
          '213',
          '214',
          '215',
        ];
        break;
    }
  }
  void finalExamHallSwitch(title){
    switch (title){
      case 'first case':
        kExamHallList = [
          '101',
          '102',
          '103',
          '104',
          '105',
          '106',
          '107',
          '108',
          '109',
          '110'
        ];
        break;
      case 'second case':
        kExamHallList = [
          '204',
          '205',
          '206',
          '207',
          '208',
          '209',
        ];
        break;
      case 'third case':
        kExamHallList = [
          '210',
          '211',
          '212',
          '213',
          '214',
          '215',
        ];
        break;
    }
  }
}