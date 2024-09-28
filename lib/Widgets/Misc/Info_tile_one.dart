import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class InfoTileOne extends StatelessWidget {
  final String title;
  final String Subtitle;

  // ignore: non_constant_identifier_names
  InfoTileOne({required this.title, required this.Subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Poppins(
          title: title,
          color: Colors.white.withOpacity(0.85),
          fontSize: 16,
        ),
        const SizedBox(
          height: 3,
        ),
        Poppins(
          title: Subtitle,
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(
          height: 10,
        ),
        const DottedLine(
          direction: Axis.horizontal,
          dashColor: Colors.white,
          lineLength: double.infinity,
          lineThickness: 1.0,
          dashLength: 4.0,
          dashGapColor: Colors.transparent,
        ),
      ],
    );
  }
}
