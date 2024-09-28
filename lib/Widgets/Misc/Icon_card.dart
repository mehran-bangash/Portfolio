import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:flutter/material.dart';

class IconCard extends StatefulWidget {
  @override
  State<IconCard> createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  bool ishovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          ishovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          ishovered = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                !ishovered
                    ? BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 20,
                        spreadRadius: 10)
                    : BoxShadow(
                        color: Colors.black.withOpacity(0.01),
                        blurRadius: 20,
                        spreadRadius: 10)
              ]),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xffffb324), shape: BoxShape.circle),
                  child: Icon(
                    Icons.dashboard_outlined,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Poppins(
                  title: "WireFramming",
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
                SizedBox(
                  height: 20,
                ),
                Poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    title:
                        "Adventure Life in coding is the exhilarating journey through programming, where every line of code bec.")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
