import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ZMSearchContainer extends StatelessWidget {
  const ZMSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: ZMSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = ZMHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: ZMDeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(ZMSizes.md),
          decoration: BoxDecoration(
            color:
                showBackground
                    ? dark
                        ? ZMColors.dark
                        : ZMColors.light
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(ZMSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: ZMColors.grey) : null,
          ),

          child: Row(
            children: [
              Icon(icon, color: ZMColors.darkGrey),
              const SizedBox(width: ZMSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
