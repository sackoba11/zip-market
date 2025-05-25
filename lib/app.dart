import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zip_market/features/authentication/screens/onboarding/onboarding.dart';

import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: ZMAppTheme.lightTheme,
      darkTheme: ZMAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
