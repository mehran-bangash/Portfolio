import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Haptic_circle extends StatefulWidget {
  const Haptic_circle({super.key});

  @override
  State<Haptic_circle> createState() => _Haptic_circleState();
}

class _Haptic_circleState extends State<Haptic_circle> {
  double cuurradius = 0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          cuurradius = 10;
        });
      },
      onExit: (event) {
        setState(() {
          cuurradius = 0;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Color(0xffFFb324),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: cuurradius)
              ]),
          child: const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Icon(
              FontAwesomeIcons.play,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
