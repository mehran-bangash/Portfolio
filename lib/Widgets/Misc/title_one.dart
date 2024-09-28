import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Titleone extends StatelessWidget {
  final String title;
  final double? size;
  final double? borderWidth;
  final Color? color;

  const Titleone(
      {super.key,
      required this.title,
      this.size,
      this.borderWidth,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: size ?? 30,
          width: size ?? 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 3, color: color ?? const Color(0xffff451b))),
          child: Padding(
            padding: EdgeInsets.all((size ?? 30) / 5),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color ?? const Color(0xffff451b)),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Poppins(
          title: title,
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w900,
        )
      ],
    );
  }
}
