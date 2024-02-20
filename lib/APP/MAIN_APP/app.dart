import 'package:flutter/material.dart';
import 'package:fly_vihanga/UTILS/ROUTES/routes_manager.dart';
import 'package:get/get.dart';

import '../../FEATURES/AUTH/VIEWS/LOGIN_VIEW/verify_account_screen.dart';
import '../../UTILS/CONSTANTS/project_text.dart';
import '../../UTILS/THEMES/cust_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        initialRoute: RouteManager.splashScreen,
        onGenerateRoute: RouteManager.onGenerateRoute,
        getPages: RouteManager.routes,
        home: const VerifyNewAccount(), //! TestScreen for Styles & text
        debugShowCheckedModeBanner: false,
        title: projectName,
        theme: CustAppTheme.lightTheme,
        darkTheme: CustAppTheme.darkTheme,
        themeMode: ThemeMode.system,
      ),
    );
  }
}
