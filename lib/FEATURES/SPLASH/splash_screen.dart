import 'package:flutter/material.dart';
import 'package:fly_vihanga/COMMON/size_box.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/cust_image_strings.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/cust_text_strings.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/project_text.dart';
import 'package:fly_vihanga/UTILS/DEVICE/cust_device_settings.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
          '/WelcomeScreen'); // Use the route name you defined in RouteManager
    });
    return SafeArea(
      child: Scaffold(
        body: buildBody(context),
        bottomNavigationBar: buildBNB(),
      ),
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
          width: mqW(context) * 0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              // color: primaryColor,
              image: const DecorationImage(
                  image: AssetImage(CustImageStg.applogo),
                  fit: BoxFit.contain)),
          margin: const EdgeInsets.all(20),
        ),
        Text(
          CustTextStg.appName,
          style: ttsHLMedium(context).copyWith(
            fontFamily: fontsFamily2,
          ),
        ),
        sH(5),
        Text(
          CustTextStg.appNameSubtitle,
          style: GoogleFonts.roboto(
              textStyle: ttsBMedium(context).copyWith(
            fontFamily: fontsFamily2,
          )),
        ),
        sH(20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: LoadingAnimationWidget.discreteCircle(
            secondRingColor: yellow,
            thirdRingColor: green,
            color: isDarkMode(context) ? white : black,
            size: 40,
          ),
        ),
      ],
    ));
  }

  buildBNB() {
    return Container(
      alignment: Alignment.center,
      height: mqH(context) * 0.07,
      color: primaryColor.withOpacity(0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'PowerBy : FlyVihanga',
            style: GoogleFonts.workSans(textStyle: ttsBMedium(context)),
          ),
          Text('App Version:1.0.0',
              style: GoogleFonts.robotoMono(textStyle: ttsBSmall(context))),
        ],
      ),
    );
  }
}
