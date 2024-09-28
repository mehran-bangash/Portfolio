import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cv/Widgets/Misc/Title_Heading.dart';
import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TestimonialComponent extends StatelessWidget {
  const TestimonialComponent({super.key});

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
              title: "Testimonial", Subtitle: "What people say about me?"),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 380,
            child: CarouselSlider.builder(
              itemCount: 6,
              options: CarouselOptions(
                  height: 350,
                  aspectRatio: 16 / 2,
                  viewportFraction: 0.5,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 300),
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal),
              itemBuilder: (context, index, realIndex) {
                return Container(
                  height: 300,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.03),
                            blurRadius: 20,
                            spreadRadius: 10)
                      ]),
                  child: Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.01),
                    child: Column(
                      children: [
                        Poppins(
                          title:
                              "Flutter testimonial coding: Seamlessly integrate user feedback into your app with Flutter widgets, creating dynamic testimonials that enhance credibility and engagement.",
                          color: Color(0xff888888),
                          fontSize: 22,
                          textStyle: const TextStyle(fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        "./assets/recieved/$index.png")),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Poppins(
                                        title: "Mehran Ali",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                    Poppins(
                                        title: "Flutter Developer",
                                        fontSize: 18,
                                        color: Color(0xffb7b7b7),
                                        fontWeight: FontWeight.w400)
                                  ],
                                )
                              ],
                            ),
                            const Icon(
                              FontAwesomeIcons.quoteLeft,
                              size: 50,
                              color: Color(0xffffb324),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
