import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/controllers.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/mobile_screens/examiner/get_data.dart';
import 'package:hti_graduation_project/screens/mobile_screens/examiner/menu_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/log_in_screen.dart';
import 'package:hti_graduation_project/screens/mobile_screens/main_menu_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/examiner/get_data.dart';
import 'package:hti_graduation_project/screens/web_screens/examiner/menu_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/log_in_screen.dart';
import 'package:hti_graduation_project/screens/web_screens/main_menu_screen.dart';
import 'package:hti_graduation_project/services/alert_box.dart';
import 'package:hti_graduation_project/services/detect_platform.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_platform/universal_platform.dart';


AlertBox getBox = AlertBox();
DetectPlatformClass detect = DetectPlatformClass();
class DataBase{
  /// subject///////////////////////////////////////////////////////////////////
  Future<void> addSubject(
      subjectName,
      subjectCode,
      groupNumber,
      numberOFStudents) {
    return kSubjects
        .doc(subjectCode + subjectName)
        .set({
      'subject_name': subjectName,
      'subject_code': subjectCode,
      'group_number': groupNumber,
      'number_of_students': numberOFStudents,
    })
        // ignore: avoid_print
        .then((value) => print("subject Added"))
        // ignore: avoid_print
        .catchError((error) => print("Failed to add subject: $error"));
  }

  getSubjectsData(code,name) async {
    kSubjectInformation = await kSubjects.doc(code+name).get();
    // ignore: avoid_print
    print(kSubjectInformation['number_of_students']);
  }

  deleteSubject(subjectName,subjectCode){
    kSubjects.doc(subjectCode + subjectName).delete().then((value){
      // ignore: avoid_print
      print('delete is done');
    }).catchError((e){
      // ignore: avoid_print
      print('e=$e');
    });
  }

  ///exam///////////////////////////////////////////////////////////////////////

  Future<void> examsPreparation(
      subjectName,
      groupNumber,
      examTime,
      examDay,
      numberOfStudents,
      hallNumber,
      firstName,
      secondName
      ) {
    return kExams.doc(hallNumber+subjectName).set({
      'subject_name': subjectName,
      'group_number': groupNumber,
      'exam_time': examTime,
      'exam_day': examDay,
      'number_of_students': numberOfStudents,
      'hall_number': hallNumber,
      'first_name':firstName,
      'second_name':secondName,
    }).then((value){
      // ignore: avoid_print
      print('exam done');
    // ignore: avoid_print
    }).catchError((e){print('e=$e');});
  }

  Future<void> midtermExaminer1(
      subjectName,
      examTime,
      examDay,
      hallNumber,
      examinerName
      ) {
    return kMidtermExaminer1.doc(examinerName+'@hti.edu.eg'+examDay+examTime).set({
      'subject_name': subjectName,
      'exam_time': examTime,
      'exam_day': examDay,
      'hall_number': hallNumber,
      'name':examinerName,
    }).then((value){
      // ignore: avoid_print
      print('examiner done');
      // ignore: avoid_print
    }).catchError((e){print('e=$e');});
  }

  Future<void> midtermExaminer2(
      subjectName,
      examTime,
      examDay,
      hallNumber,
      examinerName
      ) {
    return kMidtermExaminer2.doc(examinerName+'@hti.edu.eg'+examDay+examTime).set({
      'subject_name': subjectName,
      'exam_time': examTime,
      'exam_day': examDay,
      'hall_number': hallNumber,
      'name':examinerName,
    }).then((value){
      // ignore: avoid_print
      print('examiner done');
      // ignore: avoid_print
    }).catchError((e){print('e=$e');});
  }

  Future<void> finalExaminer1(
      subjectName,
      examTime,
      examDay,
      hallNumber,
      examinerName
      ) {
    return kFinalExaminer1.doc(examinerName+'@hti.edu.eg'+examDay+examTime).set({
      'subject_name': subjectName,
      'exam_time': examTime,
      'exam_day': examDay,
      'hall_number': hallNumber,
      'name':examinerName,
    }).then((value){
      // ignore: avoid_print
      print('examiner done');
      // ignore: avoid_print
    }).catchError((e){print('e=$e');});
  }

  Future<void> finalExaminer2(
      subjectName,
      examTime,
      examDay,
      hallNumber,
      examinerName
      ) {
    return kFinalExaminer2.doc(examinerName+'@hti.edu.eg'+examDay+examTime).set({
      'subject_name': subjectName,
      'exam_time': examTime,
      'exam_day': examDay,
      'hall_number': hallNumber,
      'name':examinerName,
    }).then((value){
      // ignore: avoid_print
      print('examiner done');
      // ignore: avoid_print
    }).catchError((e){print('e=$e');});
  }

  getExamsData() async {
    kExams.snapshots().listen((value) {
      kExamsDataList = value.docs;
    });
  }
  Future<void> lightAndDarkMode(){
    return kMode.doc().set({
      'mode': false,
    });
  }

  ///light&dark mode////////////////////////////////////////////////////////////
  Future<void> lightAndDarkModeUpdate(mode){
    return kMode.doc('M5KGWEikdv46jIk9sCW3').update({
      'mode': mode,
    });
  }

  getExaminer1MidtermData(name,day,time,context) async {
    getMidtermExaminerData = await kMidtermExaminer1.doc(name+day+time).get();
    DocumentSnapshot ds = await kMidtermExaminer1.doc(name+day+time).get();
    print(ds.exists);
    // ignore: unrelated_type_equality_checks
    //DataSnapshot snapshot = await databaseReference.once();
    if(ds.exists == false){
      getBox.alertBox(context, 'Nothing in this time');
    }else{
      detect.detectPlatform(context, MobileViewExaminerData(), WebViewExaminerData());

    }
    //     .then((value){
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['name']);
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['hall_number']);
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['subject_name']);
    // }).catchError((e){
    //   print('e = $e');
    //   // if(e == 'cannot get a field on a DocumentSnapshotPlatform which does not exist'){
    //   //   getBox.alertBox(context, 'Nothing in this time');
    //   // }else{
    //   //   Navigator.push(context, MaterialPageRoute(
    //   //     builder: (context)=>MobileViewExaminerData(),
    //   //   ));
    //   // }
    // });
     // ignore: avoid_print
    print(getMidtermExaminerData['name']);
    // ignore: avoid_print
    print(getMidtermExaminerData['hall_number']);
     // ignore: avoid_print
     print(getMidtermExaminerData['subject_name']);
     // if(getMidtermExaminerData){
     //   getBox.alertBox(context, 'Nothing in this time');
     // }else{
     //   Navigator.push(context, MaterialPageRoute(
     //     builder: (context)=>MobileViewExaminerData(),
     //   ));
     // }
  }
  getExaminer2MidtermData(name,day,time,context) async {
    getMidtermExaminerData = await kMidtermExaminer2.doc(name+day+time).get();
    DocumentSnapshot ds = await kMidtermExaminer2.doc(name+day+time).get();
    print(ds.exists);
    // ignore: unrelated_type_equality_checks
    //DataSnapshot snapshot = await databaseReference.once();
    if(ds.exists == false){
      getBox.alertBox(context, 'Nothing in this time');
    }else{
      detect.detectPlatform(context, MobileViewExaminerData(), WebViewExaminerData());

    }
    //     .then((value){
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['name']);
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['hall_number']);
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['subject_name']);
    // }).catchError((e){
    //   print('e = $e');
    //   // if(e == 'cannot get a field on a DocumentSnapshotPlatform which does not exist'){
    //   //   getBox.alertBox(context, 'Nothing in this time');
    //   // }else{
    //   //   Navigator.push(context, MaterialPageRoute(
    //   //     builder: (context)=>MobileViewExaminerData(),
    //   //   ));
    //   // }
    // });
    // ignore: avoid_print
    print(getMidtermExaminerData['name']);
    // ignore: avoid_print
    print(getMidtermExaminerData['hall_number']);
    // ignore: avoid_print
    print(getMidtermExaminerData['subject_name']);
    // if(getMidtermExaminerData){
    //   getBox.alertBox(context, 'Nothing in this time');
    // }else{
    //   Navigator.push(context, MaterialPageRoute(
    //     builder: (context)=>MobileViewExaminerData(),
    //   ));
    // }
  }

  checkMidtermExaminerCategory(name,day,time,context) async {
    DocumentSnapshot ds = await kMidtermExaminer1.doc(name+day+time).get();
    if(ds.exists){
      getExaminer1MidtermData(name,day,time,context);
    }else{
      getExaminer2MidtermData(name,day,time,context);
    }

  }

  getExaminer1FinalData(name,day,time,context) async {
    getFinalExaminerData = await kFinalExaminer1.doc(name+day+time).get();
    DocumentSnapshot ds = await kFinalExaminer1.doc(name+day+time).get();
    print(ds.exists);
    // ignore: unrelated_type_equality_checks
    //DataSnapshot snapshot = await databaseReference.once();
    if(ds.exists == false){
      getBox.alertBox(context, 'Nothing in this time');
    }else{
      detect.detectPlatform(context, MobileViewExaminerData(), WebViewExaminerData());
    }
    //     .then((value){
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['name']);
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['hall_number']);
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['subject_name']);
    // }).catchError((e){
    //   print('e = $e');
    //   // if(e == 'cannot get a field on a DocumentSnapshotPlatform which does not exist'){
    //   //   getBox.alertBox(context, 'Nothing in this time');
    //   // }else{
    //   //   Navigator.push(context, MaterialPageRoute(
    //   //     builder: (context)=>MobileViewExaminerData(),
    //   //   ));
    //   // }
    // });
    // ignore: avoid_print
    print(getFinalExaminerData['name']);
    // ignore: avoid_print
    print(getFinalExaminerData['hall_number']);
    // ignore: avoid_print
    print(getFinalExaminerData['subject_name']);
    // if(getMidtermExaminerData){
    //   getBox.alertBox(context, 'Nothing in this time');
    // }else{
    //   Navigator.push(context, MaterialPageRoute(
    //     builder: (context)=>MobileViewExaminerData(),
    //   ));
    // }
  }
  getExaminer2FinalData(name,day,time,context) async {
    getFinalExaminerData = await kFinalExaminer2.doc(name+day+time).get();
    DocumentSnapshot ds = await kFinalExaminer2.doc(name+day+time).get();
    print(ds.exists);
    // ignore: unrelated_type_equality_checks
    //DataSnapshot snapshot = await databaseReference.once();
    if(ds.exists == false){
      getBox.alertBox(context, 'Nothing in this time');
    }else{
      detect.detectPlatform(context, MobileViewExaminerData(), WebViewExaminerData());

    }
    //     .then((value){
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['name']);
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['hall_number']);
    //   // ignore: avoid_print
    //   print(getMidtermExaminerData['subject_name']);
    // }).catchError((e){
    //   print('e = $e');
    //   // if(e == 'cannot get a field on a DocumentSnapshotPlatform which does not exist'){
    //   //   getBox.alertBox(context, 'Nothing in this time');
    //   // }else{
    //   //   Navigator.push(context, MaterialPageRoute(
    //   //     builder: (context)=>MobileViewExaminerData(),
    //   //   ));
    //   // }
    // });
    // ignore: avoid_print
    print(getFinalExaminerData['name']);
    // ignore: avoid_print
    print(getFinalExaminerData['hall_number']);
    // ignore: avoid_print
    print(getFinalExaminerData['subject_name']);
    // if(getMidtermExaminerData){
    //   getBox.alertBox(context, 'Nothing in this time');
    // }else{
    //   Navigator.push(context, MaterialPageRoute(
    //     builder: (context)=>MobileViewExaminerData(),
    //   ));
    // }
  }
  checkFinalExaminerCategory(name,day,time,context) async {
    DocumentSnapshot ds = await kFinalExaminer1.doc(name+day+time).get();
    if(ds.exists){
      getExaminer1FinalData(name,day,time,context);
    }else{
      getExaminer2FinalData(name,day,time,context);
    }

  }


  ///admin//////////////////////////////////////////////////////////////////////
  void createUser(email,password,context) {
    kAuthentication.createUserWithEmailAndPassword(email: email, password: password).then((value) {
      addUser(email, password,value.user!.uid, context);
      print('account created');
    }).catchError((e) {
      print(e.toString());
      print('createUser error');
    });
  }

  void addUser(email,password,uId,context) {
    kUsers.doc(uId).set({
      'email': email,
      'password': password,
      'uid': uId,
    }).then((value){
      print('user is added');
    }).catchError((e) {
      print(e.toString());
      print('addUser First error');
    });
  }

  void logIn(email,password,context) {
    kAuthentication
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) async {
          final prefs = await SharedPreferences.getInstance();
          prefs.setString('email', email);
          kEmailPreference = prefs.getString('email');
          // ignore: avoid_print
          print('get= $kEmailPreference');
          if(UniversalPlatform.isAndroid || UniversalPlatform.isIOS){
            if(kEmailController.text == 'admin@hti.edu.eg'){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> MobileMainMenuScreen(),
              ));
            }else{
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> MobileExaminerMenuScreen(),
              ));
            }
          }else{
            if(kEmailController.text == 'admin@hti.edu.eg'){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> WebMainMenuScreen(),
              ));
            }else{
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> WebExaminerMenuScreen(),
              ));
            }
          }
          kEmailController..text = '';
          kPasswordController..text = '';
    })
        .catchError((e) {
      // ignore: avoid_print
      print('error = $e');
      kMessage = 'Wrong email or password';
      getBox.alertBox(context, kMessage.toString());
      // ignore: avoid_print
      print('logIn error');
    });
  }
  void logOut(context){
    kAuthentication.signOut().then((value){
      detect.detectPlatform(context, MobileLogInScreen(), WebLogInScreen());
    }).catchError((e){
      // ignore: avoid_print
      print('error=$e');
    });
  }
  getTeacherAssistantList() async {
    //kMidtermFirstExaminerNameList = await kTeacherAssistant.get();
    await kTeacherAssistant.snapshots().listen((event) {
      list = event.docs;
    });
    // ignore: avoid_print
    for(i = 0 ; i<= list.length ; i++){
      print(list[i]['name']);
    }
    print(list[i]['name']);
    print('list = $kMidtermFirstExaminerNameList');
    print('list = $kMidtermFirstExaminerNameList');

    //return k ;
  }
  // Future<void> addTest(name) {
  //   return kModerators
  //       .doc(name)
  //       .set({
  //     'name': name,
  //   })
  //   // ignore: avoid_print
  //       .then((value) => print("name Added"))
  //   // ignore: avoid_print
  //       .catchError((error) => print("Failed to add subject: $error"));
  // }

}