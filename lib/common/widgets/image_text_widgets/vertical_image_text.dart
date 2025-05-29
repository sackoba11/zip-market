import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class ZMVerticalImageText extends StatelessWidget {
  const ZMVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = ZMColors.white,
    this.backgroundColor = ZMColors.white,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final isDark = ZMHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ZMSizes.spaceBtwItems),
        child: Column(
          children: [
            /// Circular Icons
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(ZMSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ??
                    (isDark ? ZMColors.black : ZMColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: isDark ? ZMColors.light : ZMColors.dark,
                ),
              ),
            ),

            /// Text
            const SizedBox(height: ZMSizes.spaceBtwItems / 2),
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
