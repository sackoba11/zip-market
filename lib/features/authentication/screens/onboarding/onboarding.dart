import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers.onboarding/onboarding_controller.dart';
import 'widgets/onboardig_ship.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                image: ZMImages.onBoardingImage1,
                title: ZMTexts.onBoardingTitle1,
                subtitle: ZMTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: ZMImages.onBoardingImage2,
                title: ZMTexts.onBoardingTitle2,
                subtitle: ZMTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: ZMImages.onBoardingImage3,
                title: ZMTexts.onBoardingTitle3,
                subtitle: ZMTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          OnboardingSkip(),
          OnboardingDotNavigation(),
          OnboardingNextButton(),
        ],
      ),
    );
  }
}
