import 'package:flutter/material.dart';
import 'package:zip_market/utils/device/device_utility.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class ZMTabBar extends StatelessWidget implements PreferredSizeWidget {
  const ZMTabBar({super.key, required this.tabs});

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    var dark = ZMHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? ZMColors.black : ZMColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: ZMColors.primary,
        unselectedLabelColor: ZMColors.darkGrey,
        labelColor: dark ? ZMColors.white : ZMColors.primary,
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(ZMDeviceUtils.getAppBarHeight());
}
