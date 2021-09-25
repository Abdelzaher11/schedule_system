import 'package:hti_graduation_project/constants/variables.dart';

class LightAndDarkMoodSwitch{
  addMood(mood){
    //kMood.add(mood);
    kMood.put('mood', mood);
    // ignore: avoid_print
    print('mood add = $mood');
  }
  getMood(){
    //kMood.getAt(0);
    mood = kMood.get('mood',defaultValue: false);
    // ignore: avoid_print
    print('index get = ${kMood.get('mood')}');
    print('mood = $mood');
    return mood;
  }
  updateMood(mood){
    kMood.put('mood', mood);
    //kMood.putAt(0,mood);
    print('index update= ${kMood.get('mood')}');
  }
}