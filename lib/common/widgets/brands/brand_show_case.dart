import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class ZMBrandShowCase extends StatelessWidget {
  const ZMBrandShowCase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final dark = ZMHelperFunctions.isDarkMode(context);
    return ZMRoundedContainer(
      showBorder: true,
      borderColor: ZMColors.darkGrey,
      backgoundColor: Colors.transparent,
      padding: EdgeInsets.all(ZMSizes.md),
      margin: const EdgeInsets.only(bottom: ZMSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand with Porduct Count
          const ZMBrandCard(showBorder: false),
          const SizedBox(height: ZMSizes.spaceBtwItems),

          //Brand Top 3 Product Images
          Row(
            children:
                images
                    .map((image) => brandTopProductImageWidget(image, dark))
                    .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, bool dark) {
    return Expanded(
      child: ZMRoundedContainer(
        height: 100,
        backgoundColor: dark ? ZMColors.darkGrey : ZMColors.light,
        margin: EdgeInsets.only(right: ZMSizes.sm),
        padding: EdgeInsets.all(ZMSizes.md),
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
