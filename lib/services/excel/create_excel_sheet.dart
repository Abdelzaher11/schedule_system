import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_saver/file_saver.dart';
import 'package:flutter/foundation.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:universal_html/html.dart' show AnchorElement;

class ExcelSheet{

  Future<void> createExcelForLecturesAndSections() async {

    ///sheet1
    sheet1.importList(kLectureDaysList, 3, 1, true);
    sheet1.importList(range(1, 10), 1, 2, false);
    sheet1.importList(kLectureAndSectionDurationPeriodList, 2, 2, false);
    sheet1.autoFitColumn(1);
    sheet1.autoFitColumn(2);
    sheet1.autoFitColumn(3);
    sheet1.autoFitColumn(4);
    sheet1.autoFitColumn(5);
    sheet1.autoFitColumn(6);
    sheet1.autoFitColumn(7);
    sheet1.autoFitColumn(8);
    sheet1.autoFitColumn(9);
    sheet1.autoFitColumn(10);
    sheet1.autoFitColumn(11);
    sheet1.autoFitRow(3);
    sheet1.autoFitRow(4);
    sheet1.autoFitRow(5);
    sheet1.autoFitRow(6);
    sheet1.autoFitRow(7);
    sheet1.autoFitRow(8);

    ///sheet2
    sheet2.importList(kLectureDaysList, 3, 1, true);
    sheet2.importList(range(1, 10), 1, 2, false);
    sheet2.importList(kLectureAndSectionDurationPeriodList, 2, 2, false);
    sheet2.autoFitColumn(1);
    sheet2.autoFitColumn(2);
    sheet2.autoFitColumn(3);
    sheet2.autoFitColumn(4);
    sheet2.autoFitColumn(5);
    sheet2.autoFitColumn(6);
    sheet2.autoFitColumn(7);
    sheet2.autoFitColumn(8);
    sheet2.autoFitColumn(9);
    sheet2.autoFitColumn(10);
    sheet2.autoFitColumn(11);
    sheet2.autoFitRow(3);
    sheet2.autoFitRow(4);
    sheet2.autoFitRow(5);
    sheet2.autoFitRow(6);
    sheet2.autoFitRow(7);
    sheet2.autoFitRow(8);

    ///sheet3
    sheet3.importList(kLectureDaysList, 3, 1, true);
    sheet3.importList(range(1, 10), 1, 2, false);
    sheet3.importList(kLectureAndSectionDurationPeriodList, 2, 2, false);
    sheet3.autoFitColumn(1);
    sheet3.autoFitColumn(2);
    sheet3.autoFitColumn(3);
    sheet3.autoFitColumn(4);
    sheet3.autoFitColumn(5);
    sheet3.autoFitColumn(6);
    sheet3.autoFitColumn(7);
    sheet3.autoFitColumn(8);
    sheet3.autoFitColumn(9);
    sheet3.autoFitColumn(10);
    sheet3.autoFitColumn(11);
    sheet3.autoFitRow(3);
    sheet3.autoFitRow(4);
    sheet3.autoFitRow(5);
    sheet3.autoFitRow(6);
    sheet3.autoFitRow(7);
    sheet3.autoFitRow(8);

    ///sheet4
    sheet4.importList(kLectureDaysList, 3, 1, true);
    sheet4.importList(range(1, 10), 1, 2, false);
    sheet4.importList(kLectureAndSectionDurationPeriodList, 2, 2, false);
    sheet4.autoFitColumn(1);
    sheet4.autoFitColumn(2);
    sheet4.autoFitColumn(3);
    sheet4.autoFitColumn(4);
    sheet4.autoFitColumn(5);
    sheet4.autoFitColumn(6);
    sheet4.autoFitColumn(7);
    sheet4.autoFitColumn(8);
    sheet4.autoFitColumn(9);
    sheet4.autoFitColumn(10);
    sheet4.autoFitColumn(11);
    sheet4.autoFitRow(3);
    sheet4.autoFitRow(4);
    sheet4.autoFitRow(5);
    sheet4.autoFitRow(6);
    sheet4.autoFitRow(7);
    sheet4.autoFitRow(8);

    ///sheet5
    sheet5.importList(kLectureDaysList, 3, 1, true);
    sheet5.importList(range(1, 10), 1, 2, false);
    sheet5.importList(kLectureAndSectionDurationPeriodList, 2, 2, false);
    sheet5.autoFitColumn(1);
    sheet5.autoFitColumn(2);
    sheet5.autoFitColumn(3);
    sheet5.autoFitColumn(4);
    sheet5.autoFitColumn(5);
    sheet5.autoFitColumn(6);
    sheet5.autoFitColumn(7);
    sheet5.autoFitColumn(8);
    sheet5.autoFitColumn(9);
    sheet5.autoFitColumn(10);
    sheet5.autoFitColumn(11);
    sheet5.autoFitRow(3);
    sheet5.autoFitRow(4);
    sheet5.autoFitRow(5);
    sheet5.autoFitRow(6);
    sheet5.autoFitRow(7);
    sheet5.autoFitRow(8);

    ///sheet6
    sheet6.importList(kLectureDaysList, 3, 1, true);
    sheet6.importList(range(1, 10), 1, 2, false);
    sheet6.importList(kLectureAndSectionDurationPeriodList, 2, 2, false);
    sheet6.autoFitColumn(1);
    sheet6.autoFitColumn(2);
    sheet6.autoFitColumn(3);
    sheet6.autoFitColumn(4);
    sheet6.autoFitColumn(5);
    sheet6.autoFitColumn(6);
    sheet6.autoFitColumn(7);
    sheet6.autoFitColumn(8);
    sheet6.autoFitColumn(9);
    sheet6.autoFitColumn(10);
    sheet6.autoFitColumn(11);
    sheet6.autoFitRow(3);
    sheet6.autoFitRow(4);
    sheet6.autoFitRow(5);
    sheet6.autoFitRow(6);
    sheet6.autoFitRow(7);
    sheet6.autoFitRow(8);
    final List<int> bytes = lectureAndSectionWorkbook.saveAsStream();
    if (kIsWeb) {
      AnchorElement(
          href:
          'data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}')
        ..setAttribute('download', 'LecturesSheet.xlsx')
        ..click();
    } else {
      String path = (await getApplicationSupportDirectory()).path;
      print('path= $path');
      String fileName = '$path/LecturesSheet.xlsx';
      print('fileName= $fileName');
      File file = File(fileName);
      print('file= $file');
      await file.writeAsBytes(bytes, flush: true);
      OpenFile.open(fileName);
      Uint8List data = Uint8List.fromList(bytes);
      await FileSaver.instance.saveFile('LecturesSheet', data, 'xlsx');
      lectureAndSectionWorkbook.dispose();
    }
  }
  Future<void> createExcelForExam() async {

    examSheet.importList(kTitleExamSheet,1,1, false);
    examSheet.autoFitColumn(1);
    examSheet.autoFitColumn(2);
    examSheet.autoFitColumn(3);
    examSheet.autoFitColumn(4);
    examSheet.autoFitColumn(5);
    examSheet.autoFitColumn(6);
    examSheet.autoFitColumn(7);
    examSheet.autoFitRow(2);
    examSheet.autoFitRow(3);
    examSheet.autoFitRow(4);
    examSheet.autoFitRow(5);
    examSheet.autoFitRow(6);
    examSheet.autoFitRow(7);
    examSheet.autoFitRow(8);
    examSheet.autoFitRow(9);
    examSheet.autoFitRow(10);
    examSheet.autoFitRow(11);
    examSheet.autoFitRow(12);
    examSheet.autoFitRow(13);
    examSheet.autoFitRow(14);
    examSheet.autoFitRow(15);
    examSheet.autoFitRow(16);
    examSheet.autoFitRow(17);
    examSheet.autoFitRow(18);
    examSheet.autoFitRow(19);
    examSheet.autoFitRow(20);
    examSheet.autoFitRow(21);
    examSheet.autoFitRow(22);
    examSheet.autoFitRow(23);
    examSheet.autoFitRow(24);
    examSheet.autoFitRow(25);
    examSheet.autoFitRow(26);
    examSheet.autoFitRow(27);
    examSheet.autoFitRow(28);
    examSheet.autoFitRow(29);
    examSheet.autoFitRow(30);
    examSheet.autoFitRow(31);
    final List<int> bytes = examWorkbook.saveAsStream();
    if (kIsWeb) {
      AnchorElement(
          href:
          'data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}')
        ..setAttribute('download', 'ExamSheet.xlsx')
        ..click();
    } else {
      String path = (await getApplicationSupportDirectory()).path;
      // ignore: avoid_print
      print('path= $path');
      String fileName = '$path/ExamSheet.xlsx';
      // ignore: avoid_print
      print('fileName= $fileName');
      File file = File(fileName);
      // ignore: avoid_print
      print('file= $file');
      await file.writeAsBytes(bytes, flush: true);
      OpenFile.open(fileName);
      Uint8List data = Uint8List.fromList(bytes);
      await FileSaver.instance.saveFile('ExamSheet', data, 'xlsx');
      examWorkbook.dispose();
    }
  }
}

