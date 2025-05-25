import 'package:flutter/material.dart';
import 'package:zip_market/features/authentication/controllers.onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ZMDeviceUtils.getAppBarHeight(),
      right: ZMSizes.defaultSpace,
      child: TextButton(
        child: const Text('Skip'),
        onPressed: () => OnboardingController.instance.skipPage(),
      ),
    );
  }
}
