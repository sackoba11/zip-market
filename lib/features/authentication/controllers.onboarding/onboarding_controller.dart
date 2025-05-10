import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) =>
      currentPageIndex.value = index; // Update the current page index

  void dotNavigationClick(index) {
    currentPageIndex.value = index; // Update the current page index
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
      // pageController.nextPage(
      //   duration: const Duration(milliseconds: 300),
      //   curve: Curves.easeIn,
      // );
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2); // Skip to the last page
  }
}
