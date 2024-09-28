import 'package:cv/Widgets/Misc/Icon_card.dart';
import 'package:cv/Widgets/Misc/Title_Heading.dart';
import 'package:flutter/material.dart';

class ServiceComponent extends StatelessWidget {
  const ServiceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(80),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 20,
                spreadRadius: 10)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleHeading(
              title: "Service", Subtitle: "what can you expect \n from me?"),
          const SizedBox(
            height: 60,
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemCount: 3,
            itemBuilder: (context, index) {
              return IconCard();
            },
          )
        ],
      ),
    );
  }
}
