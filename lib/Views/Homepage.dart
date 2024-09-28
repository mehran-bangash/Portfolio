import 'package:cv/Icons/padded_icons.dart';
import 'package:cv/Provider/tap_data_provider.dart';
import 'package:cv/Widgets/Button/GriedientButtonContainer.dart';
import 'package:cv/Widgets/Button/HapticCricle.dart';
import 'package:cv/Widgets/Cursor/Animated_circle_cursar.dart';
import 'package:cv/Widgets/Cursor/Animated_textbox_slider.dart';
import 'package:cv/Widgets/Shapes/Animated_rectangle.dart';
import 'package:cv/Widgets/Shapes/Animated_shape_container.dart';
import 'package:cv/Widgets/Shapes/Animated_small_circle.dart';
import 'package:cv/Widgets/Shapes/Circle_grid.dart';
import 'package:cv/Widgets/Shapes/line_shapes.dart';
import 'package:cv/Widgets/Text/Poppins.dart';
import 'package:cv/components/about_components.dart';
import 'package:cv/components/blog_components.dart';
import 'package:cv/components/portfolio_components.dart';
import 'package:cv/components/resume_components.dart';
import 'package:cv/components/service_components.dart';
import 'package:cv/components/testimonial_components.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    String tabData = context.watch<TabDataProvider>().TabData;
    return Scaffold(
      backgroundColor: const Color(0xfff1fAff),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const AnimatedsmallCircle(),
            const AnimatedRectangle(),
            const Positioned(
                bottom: 200,
                child: Positioned(
                  child: Padding(
                    padding: EdgeInsets.all(60),
                    child: LineShapes(
                      height: 50,
                      width: 50,
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                  vertical: MediaQuery.of(context).size.height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const AnimatdedCircleCursorMouseRegion(
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: Icon(
                            FontAwesomeIcons.person,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Padded_icons(
                              clr: Color(0xff385999),
                              ficon: FontAwesomeIcons.facebook),
                          const Padded_icons(
                              clr: Color(0xff03a9f4),
                              ficon: FontAwesomeIcons.twitter),
                          const Padded_icons(
                              clr: Color(0xffFF0000),
                              ficon: FontAwesomeIcons.youtube),
                          const Padded_icons(
                              clr: Color(0xffFF0000),
                              ficon: FontAwesomeIcons.instagram),
                          AnimatdedCircleCursorMouseRegion(
                            child: GradientButtonContainer(
                              height: 70,
                              width: 250,
                              title: "Download Cv",
                              clr: const [Color(0xffff0000), Color(0xffff0000)],
                              isGradientvertical: false,
                              onpressed: () {},
                              overlaycolor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Poppins(
                                title: "I 'm",
                                color: const Color(0xffff451b),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Poppins(
                                title: "Mehran Ali",
                                color: const Color(0xff222222),
                                fontSize: 100,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Poppins(
                                title:
                                    "Passinote Coder in C++ |java |Python and Junior developer of Flutter",
                                color: const Color(0xff888888),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: AnimatdedCircleCursorMouseRegion(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Haptic_circle()),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Poppins(
                                      title: "Play Video",
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Stack(
                          children: [
                            Container(
                              color: Colors.black,
                            ),
                            const Positioned(
                                top: 30,
                                right: 50,
                                left: 50,
                                child: AnimatedShapeContainer()),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                      child: Image.asset(
                                        'assets/Mehran.jpg',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 70,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AnimatedtextboxSlider(
                          title: "About me",
                          icon: FontAwesomeIcons.info,
                          onpressed: () {
                            context
                                .read<TabDataProvider>()
                                .changeTabData("About me");
                          },
                          tabData: tabData,
                          color: const Color(0xffff451b),
                        ),
                      ),
                      Expanded(
                        child: AnimatedtextboxSlider(
                          title: "Resume",
                          icon: FontAwesomeIcons.addressBook,
                          onpressed: () {
                            context
                                .read<TabDataProvider>()
                                .changeTabData("Resume");
                          },
                          tabData: tabData,
                          color: const Color(0xffff451b),
                        ),
                      ),
                      Expanded(
                        child: AnimatedtextboxSlider(
                          title: "Portfilo",
                          icon: FontAwesomeIcons.thinkPeaks,
                          onpressed: () {
                            context
                                .read<TabDataProvider>()
                                .changeTabData("Portfolio");
                          },
                          tabData: tabData,
                          color: const Color(0xffff451b),
                        ),
                      ),
                      Expanded(
                        child: AnimatedtextboxSlider(
                          title: "Service",
                          icon: FontAwesomeIcons.gears,
                          onpressed: () {
                            context
                                .read<TabDataProvider>()
                                .changeTabData("Service");
                          },
                          tabData: tabData,
                          color: const Color(0xffff451b),
                        ),
                      ),
                      Expanded(
                        child: AnimatedtextboxSlider(
                          title: "Testimonial",
                          icon: FontAwesomeIcons.star,
                          onpressed: () {
                            context
                                .read<TabDataProvider>()
                                .changeTabData("Testimonial");
                          },
                          tabData: tabData,
                          color: const Color(0xffff451b),
                        ),
                      ),
                      Expanded(
                        child: AnimatedtextboxSlider(
                          title: "Blog",
                          icon: FontAwesomeIcons.blog,
                          onpressed: () {
                            context
                                .read<TabDataProvider>()
                                .changeTabData("Blog");
                          },
                          tabData: tabData,
                          color: const Color(0xffff451b),
                        ),
                      ),
                      Expanded(
                        child: AnimatedtextboxSlider(
                          title: "contact me",
                          icon: FontAwesomeIcons.envelope,
                          onpressed: () {},
                          tabData: tabData,
                          color: const Color(0xffff451b),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  tabData == "About me" ? AboutComponent() : Container(),
                  tabData == "Resume" ? const ResumeComponent() : Container(),
                  tabData == "Portfolio"
                      ? const PortfolioComponents()
                      : Container(),
                  tabData == "Service" ? const ServiceComponent() : Container(),
                  tabData == "Blog" ? const Blogcomponet() : Container(),
                  tabData == "Testimonial"
                      ? const TestimonialComponent()
                      : Container(),
                ],
              ),
            ),
            const Positioned(
              height: 500,
              top: 600,
              child: CircleGridShapes(
                height: 100,
                width: 100,
                crossAxisCount: 5,
                itemCount: 20,
                color: Color(
                  0xffc9cdff,
                ),
                gap: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
