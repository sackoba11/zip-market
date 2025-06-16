import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class ZMShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: ZMColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: ZMColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2),
  );
}
