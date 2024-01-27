import 'package:flutter/material.dart';

import '../CONSTANTS/cust_colors.dart';

class CustOutlineButtonTheme {
  CustOutlineButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        foregroundColor: secondaryColor,
        side: const BorderSide(color: black),
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: const RoundedRectangleBorder()),
  );
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        foregroundColor: secondaryColor,
        side: const BorderSide(color: white),
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: const RoundedRectangleBorder()),
  );
}
