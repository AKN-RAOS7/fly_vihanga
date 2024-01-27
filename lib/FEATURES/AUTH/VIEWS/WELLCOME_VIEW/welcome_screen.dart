import 'package:flutter/material.dart';

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
    return Scaffold(body: buildBody());
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(CustSizes.lg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            CustTextStg.welcomeScreenAppName,
            style: ttsHLLarge(context),
          ),
          Container(
            height: mqH(context) / 2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage(CustImageStg.welcomeImage),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: [
              Text(CustTextStg.welcomeScreenTitle,
                  textAlign: TextAlign.center, style: ttsHLMedium(context)),
              sH(10),
              Text(
                CustTextStg.welcomeScreenSubTitle,
                style: ttsBLarge(context),
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
