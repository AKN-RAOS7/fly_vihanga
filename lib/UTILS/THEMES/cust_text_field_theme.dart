import 'package:flutter/material.dart';

import '../CONSTANTS/cust_colors.dart';

class CustTextFieldTheme {
  CustTextFieldTheme._();

  static InputDecorationTheme lightTextFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: grey,
    suffixIconColor: grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: grey),
    errorStyle: const TextStyle().copyWith(fontSize: 14, color: red),
    floatingLabelStyle:
        const TextStyle().copyWith(fontSize: 14, color: black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.black12),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: orange),
    ),
  );
  static InputDecorationTheme darkTextFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: grey,
    suffixIconColor: grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: grey),
    errorStyle: const TextStyle().copyWith(fontSize: 14, color: red),
    floatingLabelStyle:
        const TextStyle().copyWith(fontSize: 14, color: white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: orange),
    ),
  );
}
