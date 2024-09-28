import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:flutter/material.dart';

class TextblockOne extends StatelessWidget {
  final String textMain;

  final String subtextMain;
  final String description;
  final String longtext;

  const TextblockOne(
      {super.key,
      required this.textMain,
      required this.subtextMain,
      required this.description,
      required this.longtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Poppins(
                  title: textMain,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 5,
                ),
                Poppins(
                  title: description,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: const Color(0xff555555),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(
                      style: BorderStyle.solid,
                      width: 1,
                      color: Colors.grey.shade300),
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              child: Poppins(
                title: subtextMain,
                color: Colors.red,
                fontSize: 18,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Poppins(
          title: longtext,
          fontSize: 17,
          color: Colors.grey,
        )
      ],
    );
  }
}
