import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

class DetectPlatformClass{
  detectPlatform(context,mobile,web){
    if(UniversalPlatform.isAndroid || UniversalPlatform.isIOS){
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=> mobile,
      ));
    }else{
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=> web,
      ));
  }
}
  detectPlatformDrawer(context,mobile,web){
    if(UniversalPlatform.isAndroid || UniversalPlatform.isIOS){
      return mobile;
    }else{
      return web;
    }
  }
}