import 'package:flutter/material.dart';

class CustomText {
  Widget TextOne({
    required String data,
    Color? textcolor,
    FontWeight? fontweidth,
    double? fontSize,
  }) {
    return Text(
      data,
      style: TextStyle(
          fontSize: fontSize ?? 18,
          color: textcolor ?? Colors.white,
          fontWeight: fontweidth ?? FontWeight.w700),
    );
  }

  Widget TextTwo({
    required String text,
    Color? textcolor,
    FontWeight? fontWeidth,
    double? fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize ?? 18,
          color: textcolor ?? Colors.white,
          fontWeight: fontWeidth ?? FontWeight.normal),
    );
  }
}
