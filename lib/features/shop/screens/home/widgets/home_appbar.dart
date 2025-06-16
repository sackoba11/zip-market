import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products_cart/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class ZMHomeAppBar extends StatelessWidget {
  const ZMHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ZMAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ZMTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: ZMColors.grey),
          ),
          Text(
            ZMTexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: ZMColors.white),
          ),
        ],
      ),
      actions: [ZMCartCounterIcon(onPressed: () {})],
    );
  }
}
