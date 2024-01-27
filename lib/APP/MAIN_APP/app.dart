import 'package:flutter/material.dart';

import '../../FEATURES/AUTH/VIEWS/ON_BOARDING_VIEW/on_boarding_screen1.dart';
import '../../UTILS/CONSTANTS/project_text.dart';
import '../../UTILS/THEMES/cust_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OnBoardingScreen1(), //! TestScreen for Styles & text
      debugShowCheckedModeBanner: false,
      title: projectName,
      theme: CustAppTheme.lightTheme,
      darkTheme: CustAppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
