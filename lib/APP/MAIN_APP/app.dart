import 'package:flutter/material.dart';
import 'package:fly_vihanga/FEATURES/SPLASH/splash_screen.dart';
import 'package:fly_vihanga/UTILS/ROUTES/routes_manager.dart';

import '../../UTILS/CONSTANTS/project_text.dart';
import '../../UTILS/THEMES/cust_theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteManager.splashScreen,
      onGenerateRoute: RouteManager.onGenerateRoute,
      getPages: RouteManager.routes,
      home: const SplashScreen(), //! TestScreen for Styles & text
      debugShowCheckedModeBanner: false,
      title: projectName,
      theme: CustAppTheme.lightTheme,
      darkTheme: CustAppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
