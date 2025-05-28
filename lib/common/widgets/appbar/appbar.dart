import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:zip_market/utils/device/device_utility.dart';

import '../../../utils/constants/sizes.dart';

class ZMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ZMAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ZMSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading:
            showBackArrow
                ? IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Iconsax.arrow_left),
                )
                : leadingIcon != null
                ? IconButton(onPressed: leadingPressed, icon: Icon(leadingIcon))
                : null,

        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(ZMDeviceUtils.getAppBarHeight());
}
