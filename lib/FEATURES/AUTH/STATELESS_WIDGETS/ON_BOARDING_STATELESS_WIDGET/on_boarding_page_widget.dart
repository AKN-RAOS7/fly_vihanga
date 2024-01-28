import 'package:flutter/material.dart';

import '../../../../COMMON/size_box.dart';
import '../../../../UTILS/CONSTANTS/cust_colors.dart';
import '../../../../UTILS/CONSTANTS/cust_sizes.dart';
import '../../../../UTILS/DEVICE/cust_device_settings.dart';
import '../../../../UTILS/THEMES/cust_text_theme.dart';
import '../../MODELS/ON_BOARDING_MODEL/on_boarding_model.dart';

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
              style: ttsHLMedium(context)
                  .copyWith(color: isDarkMode(context) ? rGreen : white),
            ),
            Text(
              model.subTitle,
              textAlign: TextAlign.center,
              style: ttsBSmall(context)
                  .copyWith(color: isDarkMode(context) ? white : white),
            )
          ],
        ),
        sH(100),
      ]),
    );
  }
}
