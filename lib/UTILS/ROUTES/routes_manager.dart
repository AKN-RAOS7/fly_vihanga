import 'package:flutter/material.dart';
import 'package:fly_vihanga/FEATURES/AUTH/VIEWS/WELLCOME_VIEW/welcome_screen.dart';
import 'package:fly_vihanga/FEATURES/ERROR/error_view.dart';
import 'package:get/get.dart';

import '../../FEATURES/AUTH/VIEWS/ON_BOARDING_VIEW/on_boarding_screen.dart';
import '../../FEATURES/SPLASH/splash_screen.dart';

// ... import other files

class RouteManager {
  static const String splashScreen = '/';
  static const String onBoardingScreen = '/OnBoardingScreen';
  static const String welcomeScreen = '/WelcomeScreen';

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: welcomeScreen, page: () => const WelcomeScreen()),
    GetPage(name: onBoardingScreen, page: () => const OnBoardingScreen()),
  ];

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return GetPageRoute(
      settings: settings,
      page: () {
        switch (settings.name) {
          case splashScreen:
            return const SplashScreen();
          case welcomeScreen:
            return const WelcomeScreen();
          case onBoardingScreen:
            return const OnBoardingScreen();
          // ... add other cases
          default:
            return const ErrorScreen();
        }
      },
    );
  }

  static void configureRoutes() {
    Get.config(
      defaultTransition: Transition.fade,
      defaultDurationTransition: const Duration(milliseconds: 300),
      enableLog: true,
      defaultGlobalState: true,
    );
  }
}
