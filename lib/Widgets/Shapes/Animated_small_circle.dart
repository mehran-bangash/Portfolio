import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedsmallCircle extends StatefulWidget {
  const AnimatedsmallCircle({Key? key}) : super(key: key);

  @override
  State<AnimatedsmallCircle> createState() => _AnimatedsmallCircleState();
}

class _AnimatedsmallCircleState extends State<AnimatedsmallCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 10))
          ..addListener(() {
            setState(() {}); // Trigger rebuild when animation updates
          })
          ..repeat(reverse: true); // Repeat the animation forward and backward
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 50,
      left: MediaQuery.of(context).size.width *
          0.1 *
          animation.value, // Adjust as needed
      bottom: 500,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 1)),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
