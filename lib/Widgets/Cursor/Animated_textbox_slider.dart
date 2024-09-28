import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:flutter/material.dart';

class AnimatedtextboxSlider extends StatefulWidget {
  final String title;
  final IconData icon;
  final double? width;
  final Color? color;
  final Function() onpressed;
  final String tabData;

  const AnimatedtextboxSlider(
      {super.key,
      required this.title,
      required this.icon,
      this.width,
      this.color,
      required this.onpressed,
      required this.tabData});

  @override
  State<AnimatedtextboxSlider> createState() => _AnimatedtextboxSliderState();
}

class _AnimatedtextboxSliderState extends State<AnimatedtextboxSlider> {
  bool showText = true;
  double adjustWidth() {
    if (showText) {
      return widget.width ?? 250;
    } else {
      if (widget.tabData != widget.title) {
        setState(() {
          showText = false;
        });
        return widget.width ?? 250;
      } else {
        return 130;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpressed,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            showText = true;
          });
        },
        onExit: (event) {
          setState(() {
            showText = false;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: AnimatedContainer(
            duration: Duration(microseconds: 100),
            height: 120,
            width: adjustWidth(),
            decoration: BoxDecoration(
                color: widget.tabData == widget.title
                    ? Color(0xfffff451b)
                    : Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Icon(
                          widget.icon,
                          size: 28,
                          color: widget.tabData == widget.title
                              ? Colors.white
                              : widget.color,
                        )),
                    showText
                        ? const SizedBox(
                            width: 15,
                          )
                        : Container(),
                    showText
                        ? Poppins(
                            title: widget.title,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black,
                          )
                        : Container()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
