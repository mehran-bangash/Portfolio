import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:flutter/material.dart';

class TitleHeading extends StatelessWidget {
  final String title;
  final String Subtitle;

  const TitleHeading({required this.title, required this.Subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Poppins(
          title: title,
          fontSize: 25,
          color: Color(0xffff4518),
          fontWeight: FontWeight.w600,
        ),
        Poppins(
          title: Subtitle,
          fontSize: 44,
          color: Colors.black,
          fontWeight: FontWeight.w800,
        ),
      ],
    );
  }
}
