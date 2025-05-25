import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ZMTermsAndConditionCheckBox extends StatelessWidget {
  const ZMTermsAndConditionCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ZMHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: ZMSizes.spaceBtwItems),

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${ZMTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${ZMTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? ZMColors.white : ZMColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? ZMColors.white : ZMColors.primary,
                ),
              ),
              TextSpan(
                text: '${ZMTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ZMTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? ZMColors.white : ZMColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? ZMColors.white : ZMColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
