import 'package:flutter/material.dart';

// ****************** App Colors******/

Color appColor = const Color.fromRGBO(121, 16, 89, 20);
Color primaryColor = const Color.fromRGBO(175, 77, 70, 5);
Color secondaryColor = const Color.fromRGBO(220, 150, 30, 3);

// ******************** Preset Colors******/
const Color red = Colors.red;
const Color grey = Colors.grey;
const Color green = Colors.green;
const Color rGreen = Color.fromARGB(255, 33, 240, 40);

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
