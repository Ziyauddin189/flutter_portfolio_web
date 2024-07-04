import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/gen/fonts.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/src/widget/portfolio_filled_button.dart';
import 'package:flutter_web/src/widget/portfolio_outlined_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const IntroContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = sizingInformation.isMobile;
    final isTablet = sizingInformation.isTablet;
    final isTabletExtraLarge = sizingInformation.localWidgetSize.width <
        const RefinedBreakpoints().tabletExtraLarge + 158;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 10.0 : 80.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: isMobile ? 10.0 : 30.0),
        child: isTabletExtraLarge
            ? MobileIntro()
            : (isMobile
                ? MobileIntro()
                : (isTablet ? MobileIntro() : DesktopIntro())),
      ),
    );
  }
}

class DesktopIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LanguageTranslation.current.welcome,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.workSans),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w700,
                      fontFamily: FontFamily.workSans,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: LanguageTranslation.current.hi,
                      ),
                      TextSpan(
                        text: LanguageTranslation.current.robert_jr,
                        style: TextStyle(
                          color: Color(0xFF0077FF),
                        ),
                      ),
                      TextSpan(
                        text: LanguageTranslation.current.product_design,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  LanguageTranslation.current.collaborating,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.workSans),
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    PortfolioFilledButton(
                      buttonName: LanguageTranslation.current.hire_me,
                      onPressed: () {},
                    ),
                    SizedBox(width: 44),
                    PortfolioOutlinedButton(
                      buttonName: LanguageTranslation.current.download_cv,
                      icon: Assets.images.icDownload.svg(),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: CircleAvatar(
              radius: 250,
              backgroundColor: Colors.transparent,
              backgroundImage: Assets.images.profile1.image().image,
            ),
          ),
        ],
      ),
    );
  }
}

class MobileIntro extends StatelessWidget {
  const MobileIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 150,
            backgroundColor: Colors.transparent,
            backgroundImage: Assets.images.profile1.image().image,
          ),
          SizedBox(height: 20),
          Text(
            LanguageTranslation.current.welcome,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.workSans),
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
                  text: LanguageTranslation.current.hi,
                ),
                TextSpan(
                  text: LanguageTranslation.current.robert_jr,
                  style: TextStyle(
                    color: Color(0xFF0077FF),
                  ),
                ),
                TextSpan(
                  text: LanguageTranslation.current.product_design,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            LanguageTranslation.current.collaborating,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.workSans),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PortfolioFilledButton(
                buttonName: LanguageTranslation.current.hire_me,
                onPressed: () {},
              ),
              SizedBox(height: 15),
              PortfolioOutlinedButton(
                buttonName: LanguageTranslation.current.download_cv,
                icon: Assets.images.icDownload.svg(),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
