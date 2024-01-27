import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../COMMON/size_box.dart';
import '../../../../UTILS/CONSTANTS/cust_colors.dart';
import '../../../../UTILS/CONSTANTS/cust_image_strings.dart';
import '../../../../UTILS/CONSTANTS/cust_text_strings.dart';
import '../../../../UTILS/THEMES/cust_text_theme.dart';
import '../../MODELS/on_boarding_model.dart';
import '../../STATELESS_WIDGETS/ON_BOARDING_STATELESS_WIDGET/on_boarding_page_widget.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({super.key});

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  final controller = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody());
  }

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: CustImageStg.onBoard1Asset,
          title: CustTextStg.onboardingTitle1,
          subTitle: CustTextStg.onboardingSubTitle1,
          counterText: '1',
          bgColor: appColor),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: CustImageStg.onBoard2Asset,
          title: CustTextStg.onboardingTitle2,
          subTitle: CustTextStg.onboardingSubTitle2,
          counterText: '1',
          bgColor: primaryColor),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: CustImageStg.onBoard3Asset,
          title: CustTextStg.onboardingTitle3,
          subTitle: CustTextStg.onboardingSubTitle3,
          counterText: '1',
          bgColor: secondaryColor),
    ),
  ];

  buildBody() {
    return Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
          enableLoop: false,
          liquidController: controller,
          onPageChangeCallback: onPageChangedCallback,
          pages: pages,
          slideIconWidget: const Icon(Icons.arrow_back_ios),
          enableSideReveal: true,
        ),
        Positioned(
            bottom: 50,
            child: OutlinedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: primaryColor),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                  foregroundColor: white),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: secondaryColor, shape: BoxShape.circle),
                child: const Icon(
                  Iconsax.arrow_right_1,
                  color: black,
                  size: 30,
                ),
              ),
            )),
        currentPage == 2
            ? sW(0)
            : Positioned(
                top: 50,
                right: 20,
                child: TextButton(
                  onPressed: () => controller.jumpToPage(page: 2),
                  child: Text(
                    "Skip",
                    style: ttsLLarge(context),
                  ),
                ),
              ),
        Positioned(
            bottom: 15,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: WormEffect(
                  activeDotColor: primaryColor,
                  dotColor: pink,
                  dotHeight: 5,
                  dotWidth: 20),
            )) // TextButton
      ],
    );
  }

  void onPageChangedCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
