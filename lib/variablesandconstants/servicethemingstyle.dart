import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parolemobile/variablesandconstants/usedcolorconstants.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: kTitleTextColor),
    ),
    iconTheme: const IconThemeData(color: kTitleTextColor),
    textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: kTitleTextColor),
    hoverColor: kPrimaryColor.withOpacity(0.10),
    splashColor: kPrimaryColor.withOpacity(0.10),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(kPrimaryColor),
      checkColor: MaterialStateProperty.all(Colors.white.withOpacity(0.95)),
      overlayColor: MaterialStateProperty.all(kPrimaryColor),
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kTitleTextColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: kTitleTextColor,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white),
    hoverColor: kPrimaryColor.withOpacity(0.10),
    splashColor: kPrimaryColor.withOpacity(0.10),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(kPrimaryColor),
      checkColor: MaterialStateProperty.all(Colors.white.withOpacity(0.95)),
      overlayColor: MaterialStateProperty.all(kPrimaryColor),
    ),
  );
}
