import 'package:flutter/material.dart';
import 'package:fly_vihanga/COMMON/size_box.dart';
import 'package:fly_vihanga/FEATURES/AUTH/MODELS/on_boarding_model.dart';
import 'package:fly_vihanga/UTILS/CONSTANTS/cust_sizes.dart';
import 'package:fly_vihanga/UTILS/DEVICE/cust_device_settings.dart';
import 'package:fly_vihanga/UTILS/THEMES/cust_text_theme.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(CustSizes.xl),
      color: model.bgColor,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        sH(50),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(model.image),
                fit: BoxFit.cover,
              )),
          height: mqH(context) / 2,
          width: mqW(context),
        ),
        Column(
          children: [
            Text(
              model.title,
              textAlign: TextAlign.center,
              style: ttsHLMedium(context),
            ),
            Text(
              model.subTitle,
              textAlign: TextAlign.center,
              style: ttsBSmall(context),
            )
          ],
        ),
        sH(100),
      ]),
    );
  }
}
