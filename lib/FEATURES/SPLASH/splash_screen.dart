import 'package:flutter/material.dart';
import 'package:fly_vihanga/COMMON/size_box.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/cust_image_strings.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/project_text.dart';
import 'package:fly_vihanga/UTILS/DEVICE/cust_device_settings.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../UTILS/CONSTANTS/cust_colors.dart';
import '../../UTILS/THEMES/cust_text_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      // Navigate to the login page using GetX
      Get.toNamed(
          '/OnBoardingScreen'); // Use the route name you defined in RouteManager
    });
    return Scaffold(
      body: buildBody(context),
      bottomNavigationBar: buildBNB(),
    );
  }

  Center buildBody(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: mqH(context) * 0.3,
          width: mqW(context) * 0.6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              // color: primaryColor,
              image: const DecorationImage(
                  image: AssetImage(CustImageStg.applogo), fit: BoxFit.cover)),
          margin: const EdgeInsets.all(20),
        ),
        Text(
          'Fly Vihanga',
          style: ttsHLLarge(context)
              .copyWith(fontFamily: fontsFamily2, color: white),
        ),
        sH(5),
        Text(
          'Wings to fly High....!',
          style: ttsBLarge(context).copyWith(
            fontFamily: fontsFamily1,
            color: white,
            decoration: TextDecoration.underline,
          ),
        ),
        sH(20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: LoadingAnimationWidget.halfTriangleDot(
            color: white,
            size: 40,
          ),
        ),
      ],
    ));
  }

  buildBNB() {
    return Container(
      alignment: Alignment.center,
      height: mqH(context) * 0.05,
      // color: white,
      child: Column(
        children: [
          Text(
            'PowerBy : Fly Vihanga',
            style: ttsBLarge(context),
          ),
          Text(
            'App Version:1.0.0',
            style: ttsBSmall(context).copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
