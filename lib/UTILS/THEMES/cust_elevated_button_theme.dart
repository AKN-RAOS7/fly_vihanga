import 'package:flutter/material.dart';

import '../CONSTANTS/cust_colors.dart';

class CustElevatedButtonTheme {
  CustElevatedButtonTheme._();

  static final ligtElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 3,
        foregroundColor: white,
        backgroundColor: primaryColor,
        disabledBackgroundColor: grey,
        disabledForegroundColor: grey,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        shape: const RoundedRectangleBorder(),
        side: BorderSide(color: appColor)),
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 3,
        foregroundColor: white,
        backgroundColor: primaryColor,
        disabledBackgroundColor: grey,
        disabledForegroundColor: grey,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        shape: const RoundedRectangleBorder(),
        side: const BorderSide(color: black)),
  );
}
