import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class ZMCirlcularContainer extends StatelessWidget {
  const ZMCirlcularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 4000,
    this.padding = 0,
    this.child,
    this.backgoundColor = ZMColors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color? backgoundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgoundColor,
      ),
      child: child,
    );
  }
}