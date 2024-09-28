import 'package:cv/Widgets/Cursor/Animated_circle_cursar.dart';
import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:flutter/material.dart';

class HapticTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onpressed;

  const HapticTextButton(
      {super.key,
      required this.text,
      required this.color,
      required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return AnimatdedCircleCursorMouseRegion(
        child: TextButton(
            onPressed: onpressed,
            child: Poppins(
              title: text,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
            )));
  }
}
