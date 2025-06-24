import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_text_with_verified_icon.dart';

class ZMBrandCard extends StatelessWidget {
  const ZMBrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = ZMHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: ZMRoundedContainer(
        padding: EdgeInsets.all(ZMSizes.sm),
        showBorder: showBorder,
        backgoundColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: ZMCircularImage(
                image: ZMImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? ZMColors.white : ZMColors.black,
              ),
            ),
            const SizedBox(width: ZMSizes.spaceBtwItems / 2),

            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ZMBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
