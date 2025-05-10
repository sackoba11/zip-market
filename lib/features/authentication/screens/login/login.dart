import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:zip_market/utils/constants/text_strings.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../common/widgets/form_divider.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ZMSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title and Subtitle
              LoginHeader(),

              //form
              LoginForm(),  

              //Or Divider
              FormDivider(dividerText: ZMTexts.orSignInWith.capitalize!),
              const SizedBox(height: ZMSizes.spaceBtwInputFields),

              //Social Media Buttons
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
