import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/gen/fonts.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/src/widget/portfolio_filled_button.dart';
import 'package:flutter_web/src/widget/portfolio_outlined_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const ProjectsContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = sizingInformation.isMobile;
    final isTablet = sizingInformation.isTablet;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 10.0 : 80.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: isMobile ? 10.0 : 30.0),
        child: isMobile
            ? MobileProjects()
            : (isTablet ? TabletProjects() : DesktopProjects()),
      ),
    );
  }
}

class DesktopProjects extends StatefulWidget {
  @override
  State<DesktopProjects> createState() => _DesktopProjectsState();
}

class _DesktopProjectsState extends State<DesktopProjects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            LanguageTranslation.current.our_projects,
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
            LanguageTranslation.current.presenting,
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.workSans,
                color: Colors.black),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PortfolioFilledButton(
                  buttonName: LanguageTranslation.current.all,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: PortfolioOutlinedButton(
                  buttonName: LanguageTranslation.current.ui_ux_design,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: PortfolioOutlinedButton(
                  buttonName: LanguageTranslation.current.branding_design,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: PortfolioOutlinedButton(
                  buttonName: LanguageTranslation.current.word_press,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(child: Assets.images.project1.image()),
              SizedBox(
                width: 30,
              ),
              Expanded(child: Assets.images.project2.image()),
              SizedBox(
                width: 30,
              ),
              Expanded(child: Assets.images.project3.image()),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(child: Assets.images.project4.image()),
              SizedBox(
                width: 30,
              ),
              Expanded(child: Assets.images.project5.image()),
              SizedBox(
                width: 30,
              ),
              Expanded(child: Assets.images.project6.image()),
            ],
          ),
        ],
      ),
    );
  }
}

class TabletProjects extends StatefulWidget {
  const TabletProjects({super.key});

  @override
  State<TabletProjects> createState() => _TabletProjectsState();
}

class _TabletProjectsState extends State<TabletProjects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            LanguageTranslation.current.our_projects,
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
            LanguageTranslation.current.presenting,
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.workSans,
                color: Colors.black),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PortfolioFilledButton(
                  buttonName: LanguageTranslation.current.all,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: PortfolioOutlinedButton(
                  buttonName: LanguageTranslation.current.ui_ux_design,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: PortfolioOutlinedButton(
                  buttonName: LanguageTranslation.current.branding_design,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: PortfolioOutlinedButton(
                  buttonName: LanguageTranslation.current.word_press,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(child: Assets.images.project1.image()),
              SizedBox(
                width: 30,
              ),
              Expanded(child: Assets.images.project2.image()),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(child: Assets.images.project3.image()),
              SizedBox(
                width: 30,
              ),
              Expanded(child: Assets.images.project4.image()),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(child: Assets.images.project5.image()),
              SizedBox(
                width: 30,
              ),
              Expanded(child: Assets.images.project6.image()),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileProjects extends StatelessWidget {
  const MobileProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            LanguageTranslation.current.our_projects,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.workSans,
              color: Color(0xFF0077FF),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            LanguageTranslation.current.presenting,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.workSans,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PortfolioFilledButton(
                    size: "small",
                    buttonName: LanguageTranslation.current.all,
                    onPressed: () {},
                  ),
                  SizedBox(width: 20),
                  PortfolioOutlinedButton(
                    size: "small",
                    buttonName: LanguageTranslation.current.ui_ux_design,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PortfolioOutlinedButton(
                    size: "small",
                    buttonName: LanguageTranslation.current.branding_design,
                    onPressed: () {},
                  ),
                  SizedBox(width: 20),
                  PortfolioOutlinedButton(
                    size: "small",
                    buttonName: LanguageTranslation.current.word_press,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Assets.images.project1.image(),
              SizedBox(
                height: 30,
              ),
              Assets.images.project2.image(),
              SizedBox(
                height: 30,
              ),
              Assets.images.project3.image(),
              SizedBox(
                height: 30,
              ),
              Assets.images.project4.image(),
              SizedBox(
                height: 30,
              ),
              Assets.images.project5.image(),
              SizedBox(
                height: 30,
              ),
              Assets.images.project6.image(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
