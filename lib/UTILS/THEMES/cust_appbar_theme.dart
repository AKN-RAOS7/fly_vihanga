import 'package:flutter/material.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/cust_colors.dart';

class CustAppBarTheme {
  CustAppBarTheme._();
  static const lightAppBarTheme = AppBarTheme(
      elevation: 3,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: transParent,
      surfaceTintColor: transParent,
      iconTheme: IconThemeData(color: black, size: 24),
      actionsIconTheme: IconThemeData(color: black, size: 24),
      titleTextStyle:
          TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: black));
  static const darkAppBarTheme = AppBarTheme(
      elevation: 3,
      centerTitle: false,
      scrolledUnderElevation: 0,
      surfaceTintColor: transParent,
      backgroundColor: transParent,
      iconTheme: IconThemeData(color: black, size: 24),
      actionsIconTheme: IconThemeData(color: white, size: 24),
      titleTextStyle:
          TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: white));
}
