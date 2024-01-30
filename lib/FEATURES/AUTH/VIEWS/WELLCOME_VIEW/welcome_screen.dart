import 'package:flutter/material.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/project_text.dart';

import '../../../../COMMON/size_box.dart';
import '../../../../UTILS/CONSTANTS/cust_colors.dart';
import '../../../../UTILS/CONSTANTS/cust_image_strings.dart';
import '../../../../UTILS/CONSTANTS/cust_sizes.dart';
import '../../../../UTILS/CONSTANTS/cust_text_strings.dart';
import '../../../../UTILS/DEVICE/cust_device_settings.dart';
import '../../../../UTILS/THEMES/cust_text_theme.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                isDarkMode(context) ? appColor.withOpacity(0.2) : white,
            body: buildBody()));
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(CustSizes.lg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                height: mqH(context) / 4,
                decoration: BoxDecoration(
                    // color: grey,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage(CustImageStg.applogo),
                        fit: BoxFit.contain)),
              ),
              Text(
                CustTextStg.welcomeScreenAppName,
                style: ttsHLMedium(context).copyWith(fontFamily: fontsFamily2),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                CustTextStg.welcomeScreenTitle,
                // textAlign: TextAlign.center,
                style: ttsHLMedium(context).copyWith(
                  fontFamily: fontsFamily2,
                ),
              ),
              sH(10),
              Text(
                CustTextStg.welcomeScreenSubTitle,
                // textAlign: TextAlign.center,
                style: ttsHLSmall(context).copyWith(color: secondaryColor),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      CustTextStg.aLogin.toUpperCase(),
                      style: ttsBLarge(context),
                    )),
              ),
              sW(10),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      CustTextStg.aSignUp.toUpperCase(),
                      style: ttsBLarge(context).copyWith(color: white),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
