import 'package:cv/Widgets/Button/GriedientButtonContainer.dart';
import 'package:cv/Widgets/Cursor/Animated_circle_cursar.dart';
import 'package:cv/Widgets/Misc/Info_tile_one.dart';
import 'package:cv/Widgets/Misc/Title_Heading.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class AboutComponent extends StatelessWidget {
  final String text =
      "I 'm a third-semester Information Technology student with a strong grasp of C++, demonstrated through various projects at university. During my 6 months in a call center, I enhanced my communication skills and gained direct insights into user requirements.Working as a front-end developer on Fiverr, I blend creativity with technical expertise, creating solutions that prioritize user experience. I enjoy collaborating with teams, thriving in environments that foster dynamism and innovation.I am passionate about continual learning, always exploring new technologies to stay updated. Beyond personal growth, I find joy in sharing knowledge and teaching others, recognizing the profound impact of education. My goal is to develop solutions that address real-life challenges, leveraging technology to add tangible value. Let's connect and work together to shape a future where technology tackles everyday problems!";

  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 20,
                spreadRadius: 10)
          ]),
      child: Row(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: MediaQuery.of(context).size.height * 6.5,
                  width: MediaQuery.of(context).size.height * 0.4,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset('assets/AboutMehran.jpg'),
                  ),
                ),
                Positioned(
                    top: 80,
                    right: 50,
                    child: Container(
                      height: 450,
                      width: 300,
                      padding: const EdgeInsets.all(40),
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          InfoTileOne(
                            title: "Name",
                            Subtitle: "Mehran Ali",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InfoTileOne(
                            title: "Mail",
                            Subtitle: "mehranBangash46@gmail.com",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InfoTileOne(
                            title: "Phone",
                            Subtitle: "0334-7211033",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InfoTileOne(
                            title: "address",
                            Subtitle: "Street 81 E/11-2 islamabad Pakistan",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          )),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleHeading(
                    title: "About",
                    Subtitle: "Just an ordinary guy make a differenace "),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 5),
                  child: ReadMoreText(
                    text,
                    isExpandable: true,
                    trimLength: 6,
                    trimLines: 6,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show More",
                    trimExpandedText: "Show Less",
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black54),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AnimatdedCircleCursorMouseRegion(
                  child: GradientButtonContainer(
                    title: "Download Cv",
                    height: 60,
                    padding: const EdgeInsets.all(10),
                    width: 250,
                    clr: const [Color(0xffff4518), Color(0xffff4518)],
                    isGradientvertical: false,
                    overlaycolor: Colors.red,
                    onpressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
