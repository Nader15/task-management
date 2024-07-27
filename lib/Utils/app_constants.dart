import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class AppConstants {

  static const String apiUrl = "https://www.example.com";

  String UserTocken = GetStorage().read<String>('AccessToken')??"";

  static double mediaHeight(context) => MediaQuery.of(context).size.height;
  static double mediaWidth(context) => MediaQuery.of(context).size.width;

  static const double widgetsCurve = 5;

  static consolePrint(String content){
    if (kDebugMode) {
      print(content);
    }
  }


}
