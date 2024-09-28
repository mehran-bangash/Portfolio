import 'package:cv/Widgets/Cursor/Animated_circle_cursar.dart';
import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:flutter/material.dart';

class AnimatedOverlayContainer extends StatefulWidget {
  final String maintext;
  final String subtext;
  final int index;

  const AnimatedOverlayContainer(
      {required this.maintext, required this.subtext, required this.index});

  @override
  State<AnimatedOverlayContainer> createState() =>
      _AnimatedOverlayContainerState();
}

class _AnimatedOverlayContainerState extends State<AnimatedOverlayContainer>
    with SingleTickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  late AnimationController Controller;
  late Animation<double> animation;
  bool isHovered = false;
  @override
  void initState() {
    // TODO: implement initState
    Controller = AnimationController(
        vsync: this,
        reverseDuration: const Duration(milliseconds: 100),
        duration: const Duration(milliseconds: 100));
    animation = Tween<double>(begin: 0.1, end: 0.8).animate(Controller);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatdedCircleCursorMouseRegion(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              isHovered = true;
              Controller.forward();
            });
          },
          onExit: (event) {
            setState(() {
              isHovered = false;
              Controller.reverse();
            });
          },
          child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Color(0xffff451b).withOpacity(animation.value),
                          BlendMode.srcATop),
                      image: AssetImage('assets/AboutMehran.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: isHovered == true
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Poppins(
                            title: widget.maintext,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Poppins(
                            title: widget.subtext,
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ],
                      )
                    : Container(),
              );
            },
          ),
        ),
      ),
    );
  }
}
