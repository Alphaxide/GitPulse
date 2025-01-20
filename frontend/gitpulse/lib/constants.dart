import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Define constant colors
const Color backgroundColor = Color(0xFF232F34);
const Color textColor = Colors.white;

// Define global text style using Inter font
TextStyle textStyle({double fontSize = 14, FontWeight fontWeight = FontWeight.normal}) {
  return GoogleFonts.inter(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: textColor,
  );
}
