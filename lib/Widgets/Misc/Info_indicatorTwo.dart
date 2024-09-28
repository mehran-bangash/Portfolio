import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class InfoIndicatorTwo extends StatelessWidget {
  final String text;
  final double value;

  const InfoIndicatorTwo({super.key, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SleekCircularSlider(
          min: 0,
          max: 100,
          appearance: CircularSliderAppearance(
              customColors:
                  CustomSliderColors(progressBarColor: const Color(0xffff451b)),
              infoProperties: InfoProperties(
                  mainLabelStyle:
                      GoogleFonts.poppins(fontWeight: FontWeight.w400)),
              size: 200,
              customWidths: CustomSliderWidths(progressBarWidth: 10)),
          initialValue: value,
        ),
        Poppins(
          title: text,
          fontSize: 26,
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}
