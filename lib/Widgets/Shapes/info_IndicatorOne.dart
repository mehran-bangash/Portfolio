import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class infoIndicatorOne extends StatefulWidget {
  final String text;
  final double widthTotal;
  final double widthActual;
  final int? animationduration;

  const infoIndicatorOne(
      {super.key,
      required this.text,
      required this.widthTotal,
      required this.widthActual,
      this.animationduration});

  @override
  State<infoIndicatorOne> createState() => _infoIndicatorOneState();
}

class _infoIndicatorOneState extends State<infoIndicatorOne>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    animationController = AnimationController(
        vsync: this,
        reverseDuration: Duration(seconds: widget.animationduration ?? 1),
        duration: Duration(seconds: widget.animationduration ?? 1))
      ..forward();
    animation = Tween<double>(begin: 0, end: widget.widthActual)
        .animate(animationController);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Poppins(
          title: widget.text,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 15,
        ),
        AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Container(
              height: 6,
              width: animation.value,
              decoration: const BoxDecoration(
                  color: Color(0xffff451b),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            );
          },
        ),
        const SizedBox(
          height: 3,
        ),
        Container(
          height: 8,
          width: widget.widthTotal,
          decoration: const BoxDecoration(
              color: Color(0xffe2e7ec),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ],
    );
  }
}
