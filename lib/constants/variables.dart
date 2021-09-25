import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';

///padding variables////////////////////////////////////////////////////////////

var kPadding5 = 5.0;
var kPadding10 = 10.0;
var kPadding15 = 15.0;
var kPadding20 = 20.0;
var kPadding25 = 25.0;

///font size////////////////////////////////////////////////////////////////////

var kSize16 = 16.0;
var kSize17 = 17.0;
var kSize18 = 18.0;
var kSize19 = 19.0;
var kSize20 = 20.0;

///height///////////////////////////////////////////////////////////////////////

var kHeight15 = 15.0;
var kHeight20 = 20.0;

///login screen variables///////////////////////////////////////////////////////
///mobile variables/////////////////////////////////////////////////////////////
bool kCheckButtonMobileLogInShowPassword = false;
bool kCheckButtonMobileAddUserShowPassword = false;

///web variables////////////////////////////////////////////////////////////////
bool kCheckButtonWebLogInShowPassword = false;
bool kCheckButtonWebAddUserShowPassword = false;

///light&dark mode//////////////////////////////////////////////////////////////

var kModeChange = false;
final kMood = Hive.box('switch');
// ignore: prefer_typing_uninitialized_variables
var mood;


/// lec & section screen variables//////////////////////////////////////////////

var kDepartmentList = [
  'Computer Science',
  'Business',
  'Engineering',
];

var kHallLecturesList = [];

var kHallSectionList = [];


// ignore: prefer_typing_uninitialized_variables
var kDepartmentValue;
// ignore: prefer_typing_uninitialized_variables
var kHallLecturesValue;
// ignore: prefer_typing_uninitialized_variables
var kHallSectionValue;


var kLectureDaysList = [
  'Saturday',
  'Sunday',
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thrusday',
];

var kSectionDaysList = [
  'Saturday',
  'Sunday',
  'Monday',
  'Tuesday',
  'Wednesday',
];

var kLectureDurationList = [
  '9:00-11:25',
  '11:25-1:05',
  '1:05-3:30',
];

var kSectionDurationList = [
  '9:00-10:30',
  '9:45-11:25',
  '11:25-1:05',
  '1:05-2:45',
  '2:00-3:30',
];


// ignore: prefer_typing_uninitialized_variables
var kLectureDay;
// ignore: prefer_typing_uninitialized_variables
var kLectureTime;

// ignore: prefer_typing_uninitialized_variables
var kSectionDay;
// ignore: prefer_typing_uninitialized_variables
var kSectionTime;

// ignore: prefer_typing_uninitialized_variables
var kGroupNumberValue;
var kGroupNumberList = [
  1,2,3,4,5,6
];

// ignore: prefer_typing_uninitialized_variables
var kFirstDurationLectureValue;
// ignore: prefer_typing_uninitialized_variables
var kSecondDurationLectureValue;
// ignore: prefer_typing_uninitialized_variables
var kThirdDurationLectureValue;

// ignore: prefer_typing_uninitialized_variables
var kFirstDurationSectionValue;
// ignore: prefer_typing_uninitialized_variables
var kSecondDurationSectionValue;


///excel variables//////////////////////////////////////////////////////////////

///lecture & section excel variables////////////////////////////////////////////
final Workbook lectureAndSectionWorkbook = Workbook(6);
final Worksheet sheet1 = lectureAndSectionWorkbook.worksheets[0];
final Worksheet sheet2 = lectureAndSectionWorkbook.worksheets[1];
final Worksheet sheet3 = lectureAndSectionWorkbook.worksheets[2];
final Worksheet sheet4 = lectureAndSectionWorkbook.worksheets[3];
final Worksheet sheet5 = lectureAndSectionWorkbook.worksheets[4];
final Worksheet sheet6 = lectureAndSectionWorkbook.worksheets[5];
List range(int from, int to) => List.generate(to - from + 1, (j) => j + from);

var kLectureAndSectionDurationPeriodList = [
'9:00-9:45',
'9:45-10:30',
'10:40-11:25',
'11:25-12:10',
'12:20-1:05',
'1:05-1:50',
'2:00-2:45',
'2:45-3:30',
'3:30-4:15',
'4:15-5:00',
];

/// exam excel variables////////////////////////////////////////////////////////

final Workbook examWorkbook = Workbook(1);
final Worksheet examSheet = examWorkbook.worksheets[0];
var examSheetIndex = 2;

var kTitleExamSheet = [
  'Code',
  'Subject Name',
  'Number of Students',
  'Day',
  'Time',
  'Hall',
  'Examiner'
];


/// saturday duration times in Excel////////////////////////////////////////////

var kSaturday1 = 'B3';
var kSaturday2 = 'C3';
var kSaturday3 = 'D3';
var kSaturday4 = 'E3';
var kSaturday5 = 'F3';
var kSaturday6 = 'G3';
var kSaturday7 = 'H3';
var kSaturday8 = 'I3';

/// sunday duration times in Excel//////////////////////////////////////////////

var kSunday1 = 'B4';
var kSunday2 = 'C4';
var kSunday3 = 'D4';
var kSunday4 = 'E4';
var kSunday5 = 'F4';
var kSunday6 = 'G4';
var kSunday7 = 'H4';
var kSunday8 = 'I4';

/// monday duration times in Excel//////////////////////////////////////////////

var kMonday1 = 'B5';
var kMonday2 = 'C5';
var kMonday3 = 'D5';
var kMonday4 = 'E5';
var kMonday5 = 'F5';
var kMonday6 = 'G5';
var kMonday7 = 'H5';
var kMonday8 = 'I5';

/// tuesday duration times in Excel/////////////////////////////////////////////

var kTuesday1 = 'B6';
var kTuesday2 = 'C6';
var kTuesday3 = 'D6';
var kTuesday4 = 'E6';
var kTuesday5 = 'F6';
var kTuesday6 = 'G6';
var kTuesday7 = 'H6';
var kTuesday8 = 'I6';

/// wednesday duration times in Excel///////////////////////////////////////////

var kWednesday1 = 'B7';
var kWednesday2 = 'C7';
var kWednesday3 = 'D7';
var kWednesday4 = 'E7';
var kWednesday5 = 'F7';
var kWednesday6 = 'G7';
var kWednesday7 = 'H7';
var kWednesday8 = 'I7';

/// thrusday duration times in Excel////////////////////////////////////////////

var kThrusday1 = 'B8';
var kThrusday2 = 'C8';
var kThrusday3 = 'D8';
var kThrusday4 = 'E8';
var kThrusday5 = 'F8';
var kThrusday6 = 'G8';
var kThrusday7 = 'H8';
var kThrusday8 = 'I8';


///firebase variables///////////////////////////////////////////////////////////

CollectionReference kSubjects = FirebaseFirestore.instance.collection('subjects');
CollectionReference kExams = FirebaseFirestore.instance.collection('exams');
CollectionReference kMode = FirebaseFirestore.instance.collection('light_dark_mode');
CollectionReference kUsers = FirebaseFirestore.instance.collection('users');
CollectionReference kMidtermExaminer1 = FirebaseFirestore.instance.collection('examiner1');
CollectionReference kMidtermExaminer2 = FirebaseFirestore.instance.collection('examiner2');
CollectionReference kFinalExaminer1 = FirebaseFirestore.instance.collection('finalExaminer1');
CollectionReference kFinalExaminer2 = FirebaseFirestore.instance.collection('finalExaminer2');
FirebaseAuth kAuthentication = FirebaseAuth.instance;
CollectionReference kTeacherAssistant = FirebaseFirestore.instance.collection('teacher_assistant');
CollectionReference kModerators = FirebaseFirestore.instance.collection('moderators');


///shared preference variables//////////////////////////////////////////////////

// ignore: prefer_typing_uninitialized_variables
var kEmailPreference;

///subject database variables///////////////////////////////////////////////////
// ignore: prefer_typing_uninitialized_variables
var kSubjectInformation;
// ignore: prefer_typing_uninitialized_variables
var subjectIndex;
List<String> kLectureDayCheck = [];
List<String> kLectureFirstDurationCheck = [];
List<String> kLectureSecondDurationCheck = [];
List<String> kLectureThirdDurationCheck = [];
List<String> kSectionDayCheck = [];
List<String> kSectionFirstDurationCheck = [];
List<String> kSectionSecondDurationCheck = [];
List<String> kSectionThirdDurationCheck = [];
List<String> kLectureHallCheck = [];
List<String> kSectionHallCheck = [];


///insert in excel lecture and section//////////////////////////////////////////


var kLectureAndSectionCheck = false;
// ignore: prefer_typing_uninitialized_variables
var kMessage;


///exam page variables//////////////////////////////////////////////////////////


var kMidtermExamDurationPeriodList = [
  '9:30-10:30',
  '11:30-12:30',
  '1:30-2:30',
];


var kFinalExamDurationPeriodList = [
  '9:30-11:00',
  '11:30-1:00',
  '1:30-3:00',
];

var kExamDayList = [
  'Saturday',
  'Sunday',
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thrusday',
];
var kExamHallList = [];
// var kExamGroupList = [
//   '1','2','3','4','5','6'
// ];

// ignore: prefer_typing_uninitialized_variables
var kMidtermExamTimeValue;
// ignore: prefer_typing_uninitialized_variables
var kMidtermExamDayValue;
// ignore: prefer_typing_uninitialized_variables
var kMidtermExamHallValue;
// ignore: prefer_typing_uninitialized_variables
var kMidtermExamGroupValue;
// ignore: prefer_typing_uninitialized_variables
var kFinalExamTimeValue;
// ignore: prefer_typing_uninitialized_variables
var kFinalExamDayValue;
// ignore: prefer_typing_uninitialized_variables
var kFinalExamHallValue;
// ignore: prefer_typing_uninitialized_variables
var kFinalExamGroupValue;
// ignore: prefer_typing_uninitialized_variables
var kMidtermFirstNameExaminer;
// ignore: prefer_typing_uninitialized_variables
var kMidtermSecondNameExaminer;
// ignore: prefer_typing_uninitialized_variables
var kFinalFirstNameExaminer;
// ignore: prefer_typing_uninitialized_variables
var kFinalSecondNameExaminer;
//var kExamCase = false;
var kExamsDataList = [];
// ignore: prefer_typing_uninitialized_variables
//var examIndex;

var kMidtermFirstExaminerNameList = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12',
  '13',
  '14',
  '15',
  '16',
]..shuffle();


var kMidtermSecondExaminerNameList = [
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

var kFinalFirstExaminerNameList = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12',
  '13',
  '14',
  '15',
  '16',
]..shuffle();


var kFinalSecondExaminerNameList = [
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


List<String> kExamDayCheck = [];
List<String> kExamTimeCheck = [];
List<String> kExamFirstExaminerCheck = [];
List<String> kExamSecondExaminerCheck = [];
List<String> kExamHallCheck = [];

///examiner variable screen/////////////////////////////////////////////////////

// ignore: prefer_typing_uninitialized_variables
var kExaminerMidtermExamTimeValue;
// ignore: prefer_typing_uninitialized_variables
var kExaminerMidtermExamDayValue;

// ignore: prefer_typing_uninitialized_variables
var kExaminerFinalExamTimeValue;
// ignore: prefer_typing_uninitialized_variables
var kExaminerFinalExamDayValue;


// ignore: prefer_typing_uninitialized_variables
var getMidtermExaminerData;
// ignore: prefer_typing_uninitialized_variables
var getFinalExaminerData;

///help guide list//////////////////////////////////////////////////////////////

var kHelpGuideList = [
  '1.	Firstly, login as admin, teacher assistant or moderator each of users has his own permissions on the app',
  '2.	Secondly, if logged as admin you can choose to edit the course schedule or exam schedule, else if logged as teacher assistant or moderator you can choose only to view your exam surveillance period of time to view',
  '3.	insert all of data in sequence of the app because each field depends on the other field in course schedule or exam schedule ',
  '4.	Thirdly, in generating lecture hall and section hall it depends on the number of students and the group number, here we will inform you the halls with their numbers of students (From (0-39 students) in hall 204-209/From (40-49 students) in hall 101-110/From (50- till end) in hall 210-215)',
  '5.	Make sure that you inserted the time of each course correctly, if there is a conflict in the time between two courses there will be overlapped message will occurred and data will be not inserted ',
  '6.	In exam schedule , you insert the information about the course which is inserted by the admin to generate the hall number which is depends on the number of students and generate the examiners randomly ',
  '7.	When teacher assistant or moderator has logged in he can shows his information only about the exam which his surveillance appeared when he insert the day and the time ',
];

///test/////////////////////////////////////////////////////////////////////////

var list = [];
var i;














