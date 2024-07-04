import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/gen/fonts.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const FooterContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = sizingInformation.isMobile;
    final isTablet = sizingInformation.isTablet;
    final isSmallTab = sizingInformation.localWidgetSize.width <
        const RefinedBreakpoints().tabletSmall;

    return Container(
      child: isSmallTab
          ? MobileFooterContainer()
          : (isMobile
              ? MobileFooterContainer()
              : (isTablet
                  ? MobileFooterContainer()
                  : DesktopFooterContainer())),
    );
  }
}

class DesktopFooterContainer extends StatelessWidget {
  const DesktopFooterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(0xFF0077FF),
      padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
      child: Row(
        children: [
          Assets.images.icWhiteLogo.svg(),
          SizedBox(
            width: 4,
          ),
          Text(
            LanguageTranslation.current.aero_vision,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                fontFamily: FontFamily.zenKakuGothicAntique),
          ),
          SizedBox(
            width: 30,
          ),
          Text(LanguageTranslation.current.copyright,
              style: TextStyle(
                fontFamily: FontFamily.workSans,
                fontSize: 16,
                color: Color(0xFF79B2F2),
                fontWeight: FontWeight.w400,
              )),
          Spacer(),
          Row(
            children: [
              Text(LanguageTranslation.current.follow_us,
                  style: TextStyle(
                    fontFamily: FontFamily.workSans,
                    fontSize: 18,
                    color: Color(0xFF79B2F2),
                    fontWeight: FontWeight.w600,
                  )),
              Assets.images.icFacebook.svg(),
              SizedBox(width: 7.5),
              Assets.images.icX.svg(),
              SizedBox(width: 7.5),
              Assets.images.icLinkedin.svg(),
              SizedBox(width: 7.5),
              Assets.images.icEmail.svg(),
            ],
          )
        ],
      ),
    );
  }
}

class MobileFooterContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Color(0xFF0077FF),
      padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.icWhiteLogo.svg(),
              SizedBox(
                width: 4,
              ),
              Text(
                'AeroVision',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontFamily: FontFamily.zenKakuGothicAntique),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '© Copyright 2023. All Rights Reserved.',
            style: TextStyle(
              fontFamily: FontFamily.workSans,
              fontSize: 15,
              color: Color(0xFF79B2F2),
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Row(
            children: [
              Text('FOLLOW US:  ',
                  style: TextStyle(
                    fontFamily: FontFamily.workSans,
                    fontSize: 18,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w600,
                  )),
              Assets.images.icFacebook.svg(),
              SizedBox(width: 7.5),
              Assets.images.icX.svg(),
              SizedBox(width: 7.5),
              Assets.images.icLinkedin.svg(),
              SizedBox(width: 7.5),
              Assets.images.icEmail.svg(),
            ],
          )
        ],
      ),
    );
  }
}
