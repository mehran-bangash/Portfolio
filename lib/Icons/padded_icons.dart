import 'package:cv/Widgets/Cursor/Animated_circle_cursar.dart';
import 'package:flutter/material.dart';

class Padded_icons extends StatelessWidget {
  final Color clr;
  final IconData ficon;
  final double? padding;

  const Padded_icons(
      {super.key, required this.clr, required this.ficon, this.padding});

  @override
  Widget build(BuildContext context) {
    return AnimatdedCircleCursorMouseRegion(
      child: Padding(
        padding: padding != null
            ? EdgeInsets.all(padding!)
            : const EdgeInsets.all(8.0),
        child: Icon(
          ficon,
          color: clr,
          size: 20,
        ),
      ),
    );
  }
}
