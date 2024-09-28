import 'package:cv/Widgets/Button/haptic_text_button.dart';
import 'package:cv/Widgets/Misc/Title_Heading.dart';
import 'package:cv/Widgets/Shapes/animated_Overlay_container.dart';
import 'package:flutter/material.dart';

// Show The image Matter in code
class PortfolioComponents extends StatefulWidget {
  const PortfolioComponents({super.key});

  @override
  State<PortfolioComponents> createState() => _PortfolioComponentsState();
}

class _PortfolioComponentsState extends State<PortfolioComponents> {
  var type = "All";
  List<Map<String, dynamic>> all = [
    {
      "MainText": "Akoolfilm",
      "subtext": "Film production",
      "type": "Animal",
      "image": 0
    },
    {
      "MainText": "Akoolfilm",
      "subtext": "Film production",
      "type": "person",
      "image": 1
    },
    {
      "MainText": "Akoolfilm",
      "subtext": "Film production",
      "type": "Animal",
      "image": 2
    },
    {
      "MainText": "Akoolfilm",
      "subtext": "Film production",
      "type": "person",
      "image": 2
    },
    {
      "MainText": "Akoolfilm",
      "subtext": "Film production",
      "type": "Animal",
      "image": 3
    },
    {
      "MainText": "Akoolfilm",
      "subtext": "Film production",
      "type": "person",
      "image": 4
    },
  ];

  List<Map<String, dynamic>> animal = [];
  List<Map<String, dynamic>> person = [];
  List getCurrentworkingList() {
    if (type == "Animal") {
      return animal;
    } else if (type == "person") {
      return person;
    } else {
      return all;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (animal.isEmpty && person.isEmpty) {
      for (var element in all) {
        if (element["type"] == "Animal") {
          animal.add(element);
        } else if (element["type"] == "person") {
          person.add(element);
        }
      }
    }
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
              Subtitle: "My work that I did for \n clients",
              title: "Portfolio"),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HapticTextButton(
                text: "ALl",
                color: type == "All" ? const Color(0xffff451b) : Colors.black,
                onpressed: () {
                  setState(() {
                    type = "All";
                  });
                },
              ),
              HapticTextButton(
                text: "Animal",
                color: type == "Animal"
                    ? const Color.fromARGB(255, 129, 113, 109)
                    : Colors.black,
                onpressed: () {
                  setState(() {
                    type = "Animal";
                  });
                },
              ),
              HapticTextButton(
                text: "Person",
                color:
                    type == "person" ? const Color(0xffff451b) : Colors.black,
                onpressed: () {
                  setState(() {
                    type = "person";
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemCount: getCurrentworkingList().length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return getCurrentworkingList()[index]["type"] == type ||
                      type == "All"
                  ? AnimatedOverlayContainer(
                      index: getCurrentworkingList()[index]["image"],
                      maintext: getCurrentworkingList()[index]["MainText"],
                      subtext: getCurrentworkingList()[index]["subtext"],
                    )
                  : Container();
            },
          )
        ],
      ),
    );
  }
}
