import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/gen/fonts.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/src/widget/portfolio_filled_button.dart';
import 'package:flutter_web/src/widget/portfolio_outlined_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const AboutContainer({Key? key, required this.sizingInformation})
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
            ? MobileIntro()
            : (isTablet ? MobileIntro() : DesktopIntro()),
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
          CircleAvatar(
            radius: 250,
            backgroundColor: Colors.transparent,
            backgroundImage: Assets.images.profile2.image().image,
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LanguageTranslation.current.about_me,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.workSans,
                    color: Color(0xFF0077FF),
                  ),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      fontFamily: FontFamily.workSans,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: LanguageTranslation.current.twenty_years,
                        style: TextStyle(
                          color: Color(0xFF0077FF),
                        ),
                      ),
                      TextSpan(
                        text: LanguageTranslation.current.on_product,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  LanguageTranslation.current.hello_there,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.workSans),
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: PortfolioFilledButton(
                        buttonName: LanguageTranslation.current.main_skills,
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: PortfolioFilledButton(
                        buttonName: LanguageTranslation.current.awards,
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      child: PortfolioFilledButton(
                        buttonName: LanguageTranslation.current.education,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 45),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionProgressIndicator(
                      title: LanguageTranslation.current.user_experience,
                      progress: 0.9,
                      isMobile: false,
                    ),
                    SizedBox(height: 20),
                    SectionProgressIndicator(
                      title: LanguageTranslation.current.web_user,
                      progress: 0.8,
                      isMobile: false,
                    ),
                    SizedBox(height: 20),
                    SectionProgressIndicator(
                      title: LanguageTranslation.current.interaction_design,
                      progress: 0.7,
                      isMobile: false,
                    ),
                  ],
                ),
              ],
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
        children: [
          CircleAvatar(
            radius: 250,
            backgroundColor: Colors.transparent,
            backgroundImage: Assets.images.profile2.image().image,
          ),
          Text(
            LanguageTranslation.current.about_me,
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
                  text: LanguageTranslation.current.twenty_years,
                  style: TextStyle(
                    color: Color(0xFF0077FF),
                  ),
                ),
                TextSpan(
                  text: LanguageTranslation.current.on_product,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            LanguageTranslation.current.hello_there,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.workSans),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PortfolioFilledButton(
                buttonName: LanguageTranslation.current.main_skills,
                onPressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              PortfolioOutlinedButton(
                buttonName: LanguageTranslation.current.awards,
                onPressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              PortfolioOutlinedButton(
                buttonName: LanguageTranslation.current.education,
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 45),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionProgressIndicator(
                title: LanguageTranslation.current.user_experience,
                progress: 0.9,
                isMobile: true,
              ),
              SizedBox(height: 20),
              SectionProgressIndicator(
                title: LanguageTranslation.current.web_user,
                progress: 0.8,
                isMobile: true,
              ),
              SizedBox(height: 20),
              SectionProgressIndicator(
                title: LanguageTranslation.current.interaction_design,
                progress: 0.7,
                isMobile: true,
              ),
            ],
          ),
          SizedBox(height: 45),
        ],
      ),
    );
  }
}

class SectionProgressIndicator extends StatelessWidget {
  final String title;
  final double progress;
  final bool isMobile;

  const SectionProgressIndicator({
    required this.title,
    required this.progress,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    final double titleFontSize = isMobile ? 18 : 20;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: titleFontSize,
            fontWeight: FontWeight.w600,
            fontFamily: "WorkSans",
          ),
        ),
        SizedBox(height: 8),
        LinearProgressIndicator(
          value: progress,
          minHeight: 17,
          backgroundColor: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF0077FF)),
        ),
      ],
    );
  }
}
