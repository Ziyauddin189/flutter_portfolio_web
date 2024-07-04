import 'package:data/src/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/gen/fonts.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/src/presentation/base/bloc_page/base_page_state.dart';
import 'package:flutter_web/src/presentation/ui/testimonial/bloc/testimonial_container_bloc.dart';
import 'package:flutter_web/src/presentation/ui/testimonial/bloc/testimonial_container_event.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class TestimonialContainer extends StatefulWidget {
  final TestimonialItemList? data;
  final SizingInformation sizingInformation;

  TestimonialContainer({Key? key, required this.sizingInformation, required this.data})
      : super(key: key);

  @override
  State<TestimonialContainer> createState() => _TestimonialConatinerState();
}

class _TestimonialConatinerState extends BasePageState<TestimonialContainer, TestimonialConatinerBloc> {


  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      bloc.add(TestimonialConatinerInitiated(model: widget.data!));
    }
  }

  @override
  Widget buildPage(BuildContext context) {
    final isMobile = widget.sizingInformation.isMobile;
    final isTablet = widget.sizingInformation.isTablet;

    return Container(
      padding: EdgeInsets.symmetric(vertical: isMobile ? 10.0 : 30.0),
      child: isMobile
          ? MobileTestimonial(testimonialItems: widget.data?.items ?? [])
          : (isTablet
          ? DesktopTestimonial(testimonialItems: widget.data?.items ?? [])
          : DesktopTestimonial(testimonialItems: widget.data?.items ?? [])),
    );
  }

  @override
  TestimonialConatinerBloc createBlocInstance() {
    return TestimonialConatinerBloc();
  }
}

class DesktopTestimonial extends StatefulWidget {
  final List<TestimonialItem> testimonialItems;

  const DesktopTestimonial({Key? key, required this.testimonialItems})
      : super(key: key);

  @override
  State<DesktopTestimonial> createState() => _DesktopTestimonialState();
}

class _DesktopTestimonialState extends State<DesktopTestimonial> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            LanguageTranslation.current.testimonials,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.workSans,
              color: Color(0xFF0077FF),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            LanguageTranslation.current.the_trust,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.workSans,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.icCircleLeftArrow.svg(),
              SizedBox(
                width: 20,
              ),
              Assets.images.icCircleRightArrow.svg(),
            ],
          ),
          SizedBox(height: 50),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                widget.testimonialItems.length,
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
                      width: 297,
                      height: 466,
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(image: widget.testimonialItems[index].image),
                          SizedBox(height: 35),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              widget.testimonialItems[index].starCount,
                              (_) => Assets.images.icStarSvg.svg(),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            widget.testimonialItems[index].description,
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w400,
                              color: index == selectedIndex
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            widget.testimonialItems[index].name,
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w600,
                              color: index == selectedIndex
                                  ? Colors.white
                                  : Color(0xFF000000),
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            widget.testimonialItems[index].position,
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w400,
                              color: index == selectedIndex
                                  ? Colors.white
                                  : Color(0xFF666666),
                              fontSize: 16,
                            ),
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

class MobileTestimonial extends StatefulWidget {
  final List<TestimonialItem> testimonialItems;

  const MobileTestimonial({Key? key, required this.testimonialItems})
      : super(key: key);

  @override
  State<MobileTestimonial> createState() => _MobileTestimonialState();
}

class _MobileTestimonialState extends State<MobileTestimonial> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            LanguageTranslation.current.testimonials,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.workSans,
              color: Color(0xFF0077FF),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            LanguageTranslation.current.the_trust,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.workSans,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.icCircleLeftArrow.svg(),
              SizedBox(
                width: 20,
              ),
              Assets.images.icCircleRightArrow.svg(),
            ],
          ),
          SizedBox(height: 50),
          SizedBox(
            height: 466,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.testimonialItems.length,
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
                    });
                  },
                  child: Container(
                    width: 297,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: widget.testimonialItems[index].image),
                        SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            widget.testimonialItems[index].starCount,
                            (_) => Assets.images.icStarSvg.svg(),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          widget.testimonialItems[index].description,
                          style: TextStyle(
                            fontFamily: "WorkSans",
                            fontWeight: FontWeight.w400,
                            color: index == selectedIndex
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          widget.testimonialItems[index].name,
                          style: TextStyle(
                            fontFamily: "WorkSans",
                            fontWeight: FontWeight.w600,
                            color: index == selectedIndex
                                ? Colors.white
                                : Color(0xFF000000),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          widget.testimonialItems[index].position,
                          style: TextStyle(
                            fontFamily: "WorkSans",
                            fontWeight: FontWeight.w400,
                            color: index == selectedIndex
                                ? Colors.white
                                : Color(0xFF666666),
                            fontSize: 16,
                          ),
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
