import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../COMMON/size_box.dart';
import '../../../../UTILS/CONSTANTS/cust_colors.dart';
import '../../../../UTILS/CONSTANTS/cust_image_strings.dart';
import '../../../../UTILS/CONSTANTS/cust_text_strings.dart';
import '../../../../UTILS/DEVICE/cust_device_settings.dart';
import '../../../../UTILS/THEMES/cust_text_theme.dart';
import '../../MODELS/ON_BOARDING_MODEL/on_boarding_model.dart';
import '../../STATELESS_WIDGETS/ON_BOARDING_STATELESS_WIDGET/on_boarding_page_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
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
          bgColor: Colors.red.shade900),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: CustImageStg.onBoard2Asset,
          title: CustTextStg.onboardingTitle2,
          subTitle: CustTextStg.onboardingSubTitle2,
          counterText: '1',
          bgColor: Colors.purple.shade900),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: CustImageStg.onBoard3Asset,
          title: CustTextStg.onboardingTitle3,
          subTitle: CustTextStg.onboardingSubTitle3,
          counterText: '1',
          bgColor: Colors.grey.shade600),
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
                  side: const BorderSide(color: black),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                  foregroundColor: white),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration:
                    const BoxDecoration(color: white, shape: BoxShape.circle),
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
                    style: ttsTMedium(context)
                        .copyWith(color: isDarkMode(context) ? black : white),
                  ),
                ),
              ),
        Positioned(
            bottom: 15,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: const WormEffect(
                  activeDotColor: black,
                  dotColor: yellow,
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
