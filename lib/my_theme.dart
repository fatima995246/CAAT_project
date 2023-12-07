import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme {
  static Color blueColor = Color(0xff3498DB);
  static Color yelloColor = Color(0xffF39C12);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color blackColor = Color(0xff383838);


  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
    titleLarge:
        TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: whiteColor),
    titleMedium:
        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: blackColor),
    titleSmall:
        TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: blackColor),
  ));
}
