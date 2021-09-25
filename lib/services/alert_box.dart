import 'package:flutter/material.dart';
import 'package:hti_graduation_project/constants/colors.dart';
import 'package:hti_graduation_project/constants/variables.dart';
import 'package:hti_graduation_project/screens/mobile_screens/log_in_screen.dart';

class AlertBox{
  alertBox(context,message){
    return showDialog(context: context,builder: (context){
      return StatefulBuilder(
          builder: (context,setState){
            return AlertDialog(
              backgroundColor: kModeChange == false ? kDarkColor : kLightColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              // ignore: sized_box_for_whitespace
              content: Container(
                height: MediaQuery.of(context).size.height *0.20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ignore: prefer_const_literals_to_create_immutables
                    Center(
                        child: Text(
                          '$message',
                          style: TextStyle(
                            fontSize: kSize16,
                            color: kModeChange == false ? kWhiteColor : kBlackColor,
                          ),
                        )),
                    MaterialButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      color: kModeChange == false ? kLightColor : kDarkColor,
                      child: Text(
                        'Ok',
                        style: TextStyle(
                          color: kModeChange == false ? kBlackColor : kWhiteColor,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      );
    });
  }
}