import 'package:flutter/material.dart';
import 'dart:math' as math;

class LineShapes extends StatefulWidget {
  final double? height;
  final double? width;
  final double? strokeWidth;
  final Color? linecolor;
  final StrokeCap? capStyle;

  const LineShapes(
      {this.height,
      this.width,
      this.strokeWidth,
      this.linecolor,
      this.capStyle});

  @override
  State<LineShapes> createState() => _LineShapesState();
}

class _LineShapesState extends State<LineShapes>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    controller = AnimationController(
        vsync: this,
        reverseDuration: Duration(seconds: 10),
        duration: Duration(seconds: 10))
      ..forward();
    animation =
        Tween<double>(begin: math.pi, end: -math.pi).animate(controller);
    controller.addListener(() {
      if (controller.isCompleted) {
        controller.reset();
      }
      if (controller.isDismissed) {
        controller.forward();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: animation.value,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 100,
            width: widget.width,
            child: CustomPaint(
              painter: LinePainter(),
            ),
          ),
        );
      },
    );
  }
}

class LinePainter extends CustomPainter {
  final double? strokeWidth;
  final Color? linecolor;
  final StrokeCap? capStyle;

  LinePainter({this.strokeWidth, this.linecolor, this.capStyle});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = strokeWidth ?? 10
      ..color = linecolor ?? Color(0xffc9cdff)
      ..strokeCap = capStyle ?? StrokeCap.butt;
    canvas.drawLine(Offset(size.width / 100, size.height * 1 / 2),
        Offset(size.width, size.height * 1 / 2), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
