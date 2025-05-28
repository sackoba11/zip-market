import 'package:flutter/material.dart';

import 'curved_edges.dart';

class ZMCurvedEdgeWidget extends StatelessWidget {
  const ZMCurvedEdgeWidget({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: ZMCustomCurvedEdges(), child: child);
  }
}
