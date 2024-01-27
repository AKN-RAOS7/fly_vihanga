import 'package:flutter/material.dart';

// ****************** App Colors******/

Color appColor = const Color.fromARGB(255, 8, 6, 48);
Color primaryColor = const Color.fromRGBO(43, 35, 255, 1);
Color secondaryColor = const Color.fromRGBO(146, 169, 255, 1);

// ******************** Preset Colors******/
const Color red = Colors.red;
const Color grey = Colors.grey;
const Color green = Colors.green;
const Color blue = Colors.blue;
const Color black = Colors.black;
const Color white = Colors.white;
const Color orange = Colors.orange;
const Color pink = Colors.pink;
const Color yellow = Colors.yellow;
const Color transParent = Colors.transparent;

//*********************Dark Color Shades*********/
Color dgreen = Colors.green.shade900;
Color dyellow = Colors.yellow.shade600;

// ******************** Fonts Defult Colors******/
Color lightTextColor = black;
Color darkTextColor = white;

// ******************** Gradient Colors******/

Gradient linerGradient = LinearGradient(
    begin: const Alignment(0.0, 0.0),
    end: const Alignment(0.707, -0.707),
    colors: [
      appColor,
      primaryColor,
      pink,
    ]);
