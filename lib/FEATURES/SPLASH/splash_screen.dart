import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../UTILS/THEMES/cust_text_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the login page using GetX
      Get.toNamed(
          '/OnBoardingScreen'); // Use the route name you defined in RouteManager
    });
    return Scaffold(
      body: Center(
          child: Text(
        'Splashscreen',
        style: ttsHLLarge(context),
      )),
    );
  }
}
