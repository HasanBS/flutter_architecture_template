import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextTheme {
  static TextTheme? _instance;

  static TextTheme get instance {
    return _instance ??= TextTheme._init();
  }

  TextTheme._init();

  //Element Rate
  final TextStyle headline1 = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontFamily: "Antonio",
    fontStyle: FontStyle.normal,
    fontSize: 30.sp,
  );

  //AppBarTitle
  final TextStyle headline2 = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: "Antonio",
    fontStyle: FontStyle.normal,
    fontSize: 16.sp,
  );

  //Element Title
  final TextStyle headline3 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
    fontFamily: "Antonio",
    fontStyle: FontStyle.normal,
    fontSize: 16.sp,
  );

//Element body
  final TextStyle bodyText1 = TextStyle(
    height: 1.2.sp,
    fontWeight: FontWeight.w300,
    fontFamily: "Montserrat",
    fontStyle: FontStyle.normal,
    fontSize: 16.sp,
  );

  //Element body
  final TextStyle bodyText2 = TextStyle(
    fontWeight: FontWeight.w300,
    fontFamily: "Montserrat",
    fontStyle: FontStyle.normal,
    fontSize: 24.sp,
  );

//Price Ratio
  final TextStyle subtitle1 = TextStyle(
    fontWeight: FontWeight.w300,
    fontFamily: "Antonio",
    fontStyle: FontStyle.normal,
    fontSize: 10.sp,
  );
}
