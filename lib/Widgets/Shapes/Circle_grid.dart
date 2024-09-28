import 'package:flutter/material.dart';

class CircleGridShapes extends StatefulWidget {
  final double? height;
  final double? width;
  final Color? color;
  final int? crossAxisCount;
  final int? itemCount;
  final bool? isAnimationHorizontal;
  final double? gap;

  const CircleGridShapes(
      {this.height,
      this.width,
      this.color,
      this.crossAxisCount,
      this.itemCount,
      this.isAnimationHorizontal,
      this.gap});

  @override
  State<CircleGridShapes> createState() => _CircleGridShapesState();
}

class _CircleGridShapesState extends State<CircleGridShapes>
    with SingleTickerProviderStateMixin {
  late AnimationController Controller;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    Controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 10),
        reverseDuration: Duration(seconds: 10))
      ..forward();
    animation = Tween<double>(begin: 0, end: -100).animate(Controller);

    Controller.addListener(() {
      if (Controller.isCompleted) {
        Controller.reverse();
      }
      if (Controller.isDismissed) {
        Controller.forward();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: widget.isAnimationHorizontal ?? true
              ? Offset(animation.value, 0)
              : Offset(0, animation.value),
          child: Container(
            height: widget.height,
            width: widget.width,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: widget.crossAxisCount ?? 5),
              itemCount: widget.itemCount ?? 12,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(widget.gap ?? 2),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.color ?? Colors.blue),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
