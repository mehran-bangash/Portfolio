import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButtonContainer extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final List<Color> clr;
  final bool isGradientvertical;
  final Color overlaycolor;
  final Function() onpressed;
  final EdgeInsetsGeometry? padding;

  const GradientButtonContainer(
      {super.key,
      this.padding,
      required this.title,
      required this.height,
      required this.width,
      required this.clr,
      required this.isGradientvertical,
      required this.overlaycolor,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Padding(
        padding: padding ?? EdgeInsets.all(8),
        child: Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: isGradientvertical
                        ? Alignment.topCenter
                        : Alignment.centerLeft,
                    end: isGradientvertical
                        ? Alignment.bottomCenter
                        : Alignment.centerRight,
                    colors: clr),
                borderRadius: BorderRadius.circular(5)),
            child: ElevatedButton(
              onPressed: onpressed,
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(0),
                  overlayColor: MaterialStateProperty.all<Color>(overlaycolor),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
