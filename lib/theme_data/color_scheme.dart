import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Theme_Data {
  
  //AppBar padding

  static double headerHeight = 228.5;
  static double paddingside = 30.0;

  // Blue

  static Color blue = const Color(0xff4270b7);
  static Color darkblue = const Color(0xff1b3564);
  static Color lightblue = const Color(0xff5C7AEA);

  // Text Color

  static Color grey = const Color(0x96000000);
  static Color textDark = const Color(0xFF102A43);

  static Color red = const Color(0xFFAF3333);
  static Color green = const Color(0xff1E5128);

  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      primaryColor: blue,
      textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      appBarTheme: AppBarTheme(
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
