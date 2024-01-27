import 'package:flutter/material.dart';

import '../CONSTANTS/cust_colors.dart';
import '../CONSTANTS/project_text.dart';

class CustTextTheme {
  CustTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
      //* Body
      bodySmall: bodySmallL,
      bodyMedium: bodyMediumL,
      bodyLarge: bodyLargeL,
      //* Lable
      labelSmall: labelSmallL,
      labelMedium: labelMediumL,
      labelLarge: labelLargeL,
      //* Title
      titleSmall: titleSmallL,
      titleMedium: titleMediumL,
      titleLarge: titleLargeL,
      //* HeadLine
      headlineSmall: headlineSmallL,
      headlineMedium: headlineMediumL,
      headlineLarge: headlineLargeL,
      //* Display
      displaySmall: displaySmallL,
      displayMedium: displayMediumL,
      displayLarge: displayLargeL);

  static TextTheme darkTextTheme = TextTheme(
      //* Body
      bodySmall: bodySmallD,
      bodyMedium: bodyMediumD,
      bodyLarge: bodyLargeD,
      //* Lable
      labelSmall: labelSmallD,
      labelMedium: labelMediumD,
      labelLarge: labelLargeD,
      //* Title
      titleSmall: titleSmallD,
      titleMedium: titleMediumD,
      titleLarge: titleLargeD,
      //* HeadLine
      headlineSmall: headlineSmallD,
      headlineMedium: headlineMediumD,
      headlineLarge: headlineLargeD,
      //* Display
      displaySmall: displaySmallD,
      displayMedium: displayMediumD,
      displayLarge: displayLargeD);
}

//!====================================== Textstyle ShotCuts====//
//* Body Shotcut
ttsBSmall(BuildContext context) => Theme.of(context).textTheme.bodySmall;
ttsBMedium(BuildContext context) => Theme.of(context).textTheme.bodyMedium;
ttsBLarge(BuildContext context) => Theme.of(context).textTheme.bodyLarge;
//* Label Shotcut
ttsLSmall(BuildContext context) => Theme.of(context).textTheme.labelSmall;
ttsLMedium(BuildContext context) => Theme.of(context).textTheme.labelMedium;
ttsLLarge(BuildContext context) => Theme.of(context).textTheme.labelLarge;
//* Title Shotcut
ttsTSmall(BuildContext context) => Theme.of(context).textTheme.titleSmall;
ttsTMedium(BuildContext context) => Theme.of(context).textTheme.titleMedium;
ttsTLarge(BuildContext context) => Theme.of(context).textTheme.titleLarge;
//* HeadLine Shotcut
ttsHLSmall(BuildContext context) => Theme.of(context).textTheme.headlineSmall;
ttsHLMedium(BuildContext context) => Theme.of(context).textTheme.headlineMedium;
ttsHLLarge(BuildContext context) => Theme.of(context).textTheme.headlineLarge;
//* Display Shotcut
ttsDSmall(BuildContext context) => Theme.of(context).textTheme.displaySmall;
ttsDMedium(BuildContext context) => Theme.of(context).textTheme.displayMedium;
ttsDLarge(BuildContext context) => Theme.of(context).textTheme.displayLarge;

//********************************************************* Light Text themes */
//!===============================Body Light textstyle=======//
final bodySmallL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w300,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final bodyMediumL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final bodyLargeL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
//!===============================Lable Light textstyle=======//
final labelSmallL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w300,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final labelMediumL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final labelLargeL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
//!===============================Title Light textstyle=======//
final titleSmallL = TextStyle(
  color: lightTextColor,
  fontWeight: FontWeight.w300,
  fontFamily: fontsFamily1,
  wordSpacing: 0.2,
  letterSpacing: 0.1,
);
final titleMediumL = TextStyle(
  color: lightTextColor,
  fontWeight: FontWeight.w600,
  fontFamily: fontsFamily1,
  wordSpacing: 0.2,
  letterSpacing: 0.1,
);
final titleLargeL = TextStyle(
  color: lightTextColor,
  fontWeight: FontWeight.w900,
  fontFamily: fontsFamily1,
  wordSpacing: 0.2,
  letterSpacing: 0.1,
);
//!===============================Headline Light textstyle=======//
final headlineSmallL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w300,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final headlineMediumL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final headlineLargeL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
//!===============================Display Light textstyle=======//
final displaySmallL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w300,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final displayMediumL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final displayLargeL = TextStyle(
    color: lightTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
//********************************************************* Dark Text themes */
//
/// This is the dark theme for the app. It uses a black background with white text and some other shades of grey.
//
//********************************************************* Dark Text themes */
//!===============================Body Dark textstyle=======//
final bodySmallD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w300,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final bodyMediumD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final bodyLargeD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
//!===============================Lable Dark textstyle=======//
final labelSmallD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w300,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final labelMediumD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final labelLargeD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
//!===============================Title Dark textstyle=======//
final titleSmallD = TextStyle(
  color: darkTextColor,
  fontWeight: FontWeight.w300,
  fontFamily: fontsFamily1,
  wordSpacing: 0.2,
  letterSpacing: 0.1,
);
final titleMediumD = TextStyle(
  color: darkTextColor,
  fontWeight: FontWeight.w600,
  fontFamily: fontsFamily1,
  wordSpacing: 0.2,
  letterSpacing: 0.1,
);
final titleLargeD = TextStyle(
  color: darkTextColor,
  fontWeight: FontWeight.w900,
  fontFamily: fontsFamily1,
  wordSpacing: 0.2,
  letterSpacing: 0.1,
);
//!===============================Headline Dark textstyle=======//
final headlineSmallD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w300,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final headlineMediumD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final headlineLargeD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
//!===============================Display Dark textstyle=======//
final displaySmallD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w300,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final displayMediumD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
final displayLargeD = TextStyle(
    color: darkTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: fontsFamily1,
    wordSpacing: 0.2,
    letterSpacing: 0.1);
