import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedRectangle extends StatefulWidget {
  const AnimatedRectangle({Key? key}) : super(key: key);

  @override
  State<AnimatedRectangle> createState() => _AnimatedRectangleState();
}

class _AnimatedRectangleState extends State<AnimatedRectangle>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  final double? height;
  final double? width;
  final Color? clr;

  _AnimatedRectangleState({this.height, this.width, this.clr});

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
      reverseDuration: Duration(seconds: 10),
    );
    controller.forward();

    animation = Tween<double>(begin: -math.pi / 4, end: -math.pi / 3)
        .animate(controller);
    controller.addListener(() {
      if (controller.isCompleted) {
        controller.reverse();
      }
      if (controller.isDismissed) {
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 50,
      bottom: 400,
      child: RotationTransition(
        turns: animation,
        child: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Container(
            height: height ?? 30,
            width: width ?? 40,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: clr ?? Colors.greenAccent,
                ),
                shape: BoxShape.rectangle),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
