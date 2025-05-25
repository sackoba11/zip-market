import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zip_market/features/authentication/screens/login/login.dart';
import 'package:zip_market/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/success_screen.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ZMSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(ZMImages.deliveredEmailIllustration),
                width: ZMHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: ZMSizes.spaceBtwSections),

              //Title and Subtitle
              Text(
                ZMTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ZMSizes.spaceBtwItems),
              Text(
                'support@zipmarket.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ZMSizes.spaceBtwItems),
              Text(
                ZMTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ZMSizes.spaceBtwSections),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      () => Get.to(
                        () => SuccessScreen(
                          image: ZMImages.staticSuccessIllustration,
                          title: ZMTexts.yourAccountCreatedTitle,
                          subTitle: ZMTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        ),
                      ),
                  child: const Text(ZMTexts.tContinue),
                ),
              ),
              const SizedBox(height: ZMSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(ZMTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
