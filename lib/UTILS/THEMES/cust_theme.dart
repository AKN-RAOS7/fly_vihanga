import 'package:flutter/material.dart';

import '../CONSTANTS/cust_colors.dart';
import '../CONSTANTS/project_text.dart';
import 'cust_appbar_theme.dart';
import 'cust_buttom_sheet_theme.dart';
import 'cust_check_box_theme.dart';
import 'cust_elevated_button_theme.dart';
import 'cust_outlinebuttom_theme.dart';
import 'cust_text_field_theme.dart';
import 'cust_text_theme.dart';

class CustAppTheme {
  CustAppTheme._();

  //************************************************** Light Theme */
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: fontsFamily1,
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: white,
      textTheme: CustTextTheme.lightTextTheme,
      appBarTheme: CustAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: CustBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: CustCheckBoxTheme.lightCheckBoxTheme,
      inputDecorationTheme: CustTextFieldTheme.lightTextFieldTheme,
      elevatedButtonTheme: CustElevatedButtonTheme.ligtElevatedButtonTheme,
      outlinedButtonTheme: CustOutlineButtonTheme.lightOutlineButtonTheme);
  //************************************************** Dark Theme */
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: fontsFamily1,
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: black,
      textTheme: CustTextTheme.darkTextTheme,
      appBarTheme: CustAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: CustBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: CustCheckBoxTheme.darkCheckBoxTheme,
      inputDecorationTheme: CustTextFieldTheme.darkTextFieldTheme,
      elevatedButtonTheme: CustElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: CustOutlineButtonTheme.darkOutlineButtonTheme);
}
