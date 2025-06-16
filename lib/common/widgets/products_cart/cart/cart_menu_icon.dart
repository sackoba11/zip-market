import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:zip_market/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';

class ZMCartCounterIcon extends StatelessWidget {
  const ZMCartCounterIcon({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final dark = ZMHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: dark ? ZMColors.white : ZMColors.black,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: dark ? ZMColors.white : ZMColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: dark ? ZMColors.black : ZMColors.white,
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
