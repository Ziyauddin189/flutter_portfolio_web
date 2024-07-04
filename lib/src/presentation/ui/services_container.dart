import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/gen/fonts.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ServiceContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const ServiceContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = sizingInformation.isMobile;
    final isTablet = sizingInformation.isTablet;

    return Container(
      padding: EdgeInsets.symmetric(vertical: isMobile ? 10.0 : 30.0),
      child: isMobile
          ? MobileIntro()
          : (isTablet ? DesktopIntro() : DesktopIntro()),
    );
  }
}

class DesktopIntro extends StatefulWidget {
  @override
  State<DesktopIntro> createState() => _DesktopIntroState();
}

class _DesktopIntroState extends State<DesktopIntro> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            LanguageTranslation.current.services,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.workSans,
              color: Color(0xFF0077FF),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.workSans,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: LanguageTranslation.current.exploring,
                ),
                TextSpan(
                  text: LanguageTranslation.current.skills,
                  style: TextStyle(
                    color: Color(0xFF0077FF),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            LanguageTranslation.current.we_transform,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.workSans,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Assets.images.icCircleLeftArrow.svg(),
              SizedBox(
                width: 20,
              ),
              Assets.images.icCircleRightArrow.svg(),
              SizedBox(
                width: 81,
              ),
            ],
          ),
          SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                4,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      index == 0 ? 81 : 0,
                      0,
                      0,
                      0,
                    ),
                    child: Container(
                      width: 406,
                      height: 366,
                      padding: EdgeInsets.fromLTRB(30, 30, 45, 30),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            index == selectedIndex ? Colors.blue : Colors.white,
                        border: index != selectedIndex
                            ? Border.all(
                                color: Color(0xFFDDDDDD),
                                width: 1,
                              )
                            : null,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          index == selectedIndex
                              ? Assets.images.icWorkWhite
                                  .svg(height: 75, width: 75)
                              : Assets.images.icWorkBlue
                                  .svg(height: 75, width: 75),
                          SizedBox(height: 35),
                          Text(
                            LanguageTranslation.current.website_app,
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w700,
                              color: index == selectedIndex
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            LanguageTranslation.current.creating,
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w400,
                              color: index == selectedIndex
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 35),
                          Row(
                            children: [
                              Text(
                                LanguageTranslation.current.learn_more,
                                style: TextStyle(
                                  fontFamily: "WorkSans",
                                  fontWeight: FontWeight.w400,
                                  color: index == selectedIndex
                                      ? Colors.white
                                      : Color(0xFF0077FF),
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              index == selectedIndex
                                  ? Assets.images.icWhiteArrow.svg()
                                  : Assets.images.icBlueArrow.svg(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileIntro extends StatefulWidget {
  const MobileIntro({super.key});

  @override
  State<MobileIntro> createState() => _MobileIntroState();
}

class _MobileIntroState extends State<MobileIntro> {
  int selectedIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            LanguageTranslation.current.services,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.workSans,
              color: Color(0xFF0077FF),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.workSans,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: LanguageTranslation.current.exploring,
                ),
                TextSpan(
                  text: LanguageTranslation.current.skills,
                  style: TextStyle(
                    color: Color(0xFF0077FF),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            LanguageTranslation.current.we_transform,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.workSans,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.icCircleLeftArrow.svg(),
              SizedBox(width: 20),
              Assets.images.icCircleRightArrow.svg(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 380,
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      _pageController.animateToPage(
                        index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    });
                  },
                  child: Container(
                    width: 406,
                    height: 366,
                    padding: EdgeInsets.fromLTRB(30, 30, 45, 30),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:
                          index == selectedIndex ? Colors.blue : Colors.white,
                      border: index != selectedIndex
                          ? Border.all(
                              color: Color(0xFFDDDDDD),
                              width: 1,
                            )
                          : null,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        index == selectedIndex
                            ? Assets.images.icWorkWhite
                                .svg(height: 75, width: 75)
                            : Assets.images.icWorkBlue
                                .svg(height: 75, width: 75),
                        SizedBox(height: 35),
                        Text(
                          LanguageTranslation.current.website_app,
                          style: TextStyle(
                            fontFamily: "WorkSans",
                            fontWeight: FontWeight.w700,
                            color: index == selectedIndex
                                ? Colors.white
                                : Colors.black,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          LanguageTranslation.current.creating,
                          style: TextStyle(
                            fontFamily: "WorkSans",
                            fontWeight: FontWeight.w400,
                            color: index == selectedIndex
                                ? Colors.white
                                : Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 35),
                        Row(
                          children: [
                            Text(
                              LanguageTranslation.current.learn_more,
                              style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.w400,
                                color: index == selectedIndex
                                    ? Colors.white
                                    : Color(0xFF0077FF),
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 10),
                            index == selectedIndex
                                ? Assets.images.icWhiteArrow.svg()
                                : Assets.images.icBlueArrow.svg(),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: AnimatedSmoothIndicator(
              activeIndex: selectedIndex,
              count: 4,
              effect: ExpandingDotsEffect(
                dotWidth: 6,
                dotHeight: 6,
                spacing: 4,
                dotColor: Colors.black,
                activeDotColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
