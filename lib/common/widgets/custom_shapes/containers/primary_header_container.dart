import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'cirlcular_container.dart';

class ZMPrimaryHeaderContainer extends StatelessWidget {
  const ZMPrimaryHeaderContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ZMCurvedEdgeWidget(
      child: Container(
        color: ZMColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: ZMCirlcularContainer(
                  backgoundColor: ZMColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: ZMCirlcularContainer(
                  backgoundColor: ZMColors.textWhite.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
