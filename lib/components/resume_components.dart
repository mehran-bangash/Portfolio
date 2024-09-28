import 'package:cv/Widgets/Misc/Info_indicatorTwo.dart';
import 'package:cv/Widgets/Misc/Title_Heading.dart';
import 'package:cv/Widgets/Misc/textblock_one.dart';
import 'package:cv/Widgets/Misc/title_one.dart';
import 'package:cv/Widgets/Shapes/info_IndicatorOne.dart';
import 'package:flutter/material.dart';

class ResumeComponent extends StatelessWidget {
  const ResumeComponent({super.key});

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
            title: "Resume",
            Subtitle: "Combination of Skill and\n & Experience",
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Titleone(
                    title: "Education",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextblockOne(
                    textMain: "Matric Computer Science ",
                    description: "Hangu Public School",
                    subtextMain: "2016-2018",
                    longtext:
                        "Physics delves into the fundamental principles governing matter and energy, providing insights into phenomena like motion and forces, essential for simulations and game development in coding.",
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextblockOne(
                    textMain: "Pre Engineering",
                    description: "Hist Hangu",
                    subtextMain: "2018-2020",
                    longtext: "I am a passnite Coder Of C++ and java",
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextblockOne(
                    textMain: "Information Technology",
                    description: "Air university Islamabad",
                    subtextMain: "2022-2026",
                    longtext:
                        "Flutter development involves creating cross-platform mobile applications using Dart programming language and Flutter framework. It offers a fast and expressive way to build user interfaces with a single codebase, enabling developers to create beautiful and high-performance apps for both iOS and Android platforms. As a junior developer, learning Flutter opens doors to",
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Titleone(title: "Experience"),
                  SizedBox(
                    height: 30,
                  ),
                  TextblockOne(
                      textMain: "Sky Dreamers",
                      subtextMain: "2021-2022",
                      description: "Rawal Pindi 6th road",
                      longtext:
                          "As a call center agent, you'll handle inbound and outbound calls, assisting customers with inquiries, providing support, and resolving issues efficiently to ensure positive customer experiences. Your role involves effective communication skills and the ability to navigate customer relationship management systems proficiently."),
                  SizedBox(
                    height: 30,
                  ),
                  TextblockOne(
                      textMain: "Fronted End Developer ",
                      subtextMain: "2021-2022",
                      description: "Fiver ",
                      longtext:
                          "As a Fiverr frontend developer, you'll design and build visually appealing user interfaces for websites or applications, utilizing HTML, CSS, and JavaScript to create engaging experiences. Your expertise lies in crafting responsive layouts and implementing client-side interactivity to meet client requirements effectively.")
                ],
              )),
              Flexible(
                  child: Container(
                padding: const EdgeInsets.all(50),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Titleone(title: "Personal Skills"),
                    SizedBox(
                      height: 30,
                    ),
                    infoIndicatorOne(
                        text: "Time Management",
                        widthTotal: 600,
                        widthActual: 470),
                    SizedBox(
                      height: 30,
                    ),
                    infoIndicatorOne(
                        text: "Efficiency", widthTotal: 600, widthActual: 530),
                    SizedBox(
                      height: 30,
                    ),
                    infoIndicatorOne(
                        text: "Integrity", widthTotal: 600, widthActual: 570),
                    SizedBox(
                      height: 30,
                    ),
                    Titleone(title: "Software Skills"),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: InfoIndicatorTwo(
                          text: "Flutter",
                          value: 95,
                        )),
                        Expanded(
                            child: InfoIndicatorTwo(
                          text: "Dart",
                          value: 90,
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: InfoIndicatorTwo(
                          text: "After Effect",
                          value: 77,
                        )),
                        Expanded(
                            child: InfoIndicatorTwo(
                          text: "Blender",
                          value: 69,
                        )),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
