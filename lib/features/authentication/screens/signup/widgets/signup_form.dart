import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:zip_market/features/authentication/screens/signup/verify_email.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'term_and_condition_checkbox.dart';

class ZMSignupForm extends StatelessWidget {
  const ZMSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ZMTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: ZMSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ZMTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: ZMSizes.spaceBtwInputFields),
          //UserName
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ZMTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          //Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: ZMTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(width: ZMSizes.spaceBtwInputFields),
          //Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: ZMTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(width: ZMSizes.spaceBtwInputFields),

          //Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: ZMTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(width: ZMSizes.spaceBtwInputFields),

          //Terms and condition CheckBox
          ZMTermsAndConditionCheckBox(),

          SizedBox(height: ZMSizes.spaceBtwSections),
          // Signup Botton
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(ZMTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
