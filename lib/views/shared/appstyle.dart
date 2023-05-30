import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appstyle(double size, FontWeight fw){
  return GoogleFonts.poppins(fontSize: size, fontWeight: fw);
}

Color primary = const Color(0xFF547477);
class Styles{
  static Color primaryColor = primary;
  static Color textColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static TextStyle textStyle = TextStyle(fontSize: 13, color: textColor,fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = TextStyle(fontSize: 26, color: textColor,fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(fontSize: 20,color: textColor,fontWeight: FontWeight.w500);
  static TextStyle headLineStyle3 = TextStyle(fontSize: 17,color: textColor,fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(fontSize: 14, color: Colors.grey.shade500,fontWeight: FontWeight.w500);

}