import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:flutter_web/gen/fonts.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:flutter_web/src/widget/portfolio_filled_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopAppBar extends StatelessWidget {
  final SizingInformation sizingInformation;

  const TopAppBar({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = sizingInformation.isMobile;
    final isTablet = sizingInformation.isTablet;
    final isSmallTab = sizingInformation.localWidgetSize.width <
        const RefinedBreakpoints().tabletSmall;

    return Container(
      child: isSmallTab
          ? MobileTopAppBar()
          : (isMobile
              ? MobileTopAppBar()
              : (isTablet ? MobileTopAppBar() : DesktopTopAppBar())),
    );
  }
}

class DesktopTopAppBar extends StatelessWidget {
  const DesktopTopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
      child: Row(
        children: [
          Assets.images.icLogo.svg(),
          SizedBox(
            width: 4,
          ),
          Text(
            LanguageTranslation.current.aero_vision,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                fontFamily: FontFamily.zenKakuGothicAntique),
          ),
          Spacer(),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(LanguageTranslation.current.home,
                    style: TextStyle(
                      fontFamily: FontFamily.workSans,
                      fontSize: 18,
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w600,
                    )),
              ),
              TextButton(
                onPressed: () {},
                child: Text(LanguageTranslation.current.about_me_tab,
                    style: TextStyle(
                      fontFamily: FontFamily.workSans,
                      fontSize: 18,
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w600,
                    )),
              ),
              TextButton(
                onPressed: () {},
                child: Text(LanguageTranslation.current.services_tab,
                    style: TextStyle(
                      fontFamily: FontFamily.workSans,
                      fontSize: 18,
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w600,
                    )),
              ),
              TextButton(
                onPressed: () {},
                child: Text(LanguageTranslation.current.blog,
                    style: TextStyle(
                      fontFamily: FontFamily.workSans,
                      fontSize: 18,
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w600,
                    )),
              ),
              TextButton(
                onPressed: () {},
                child: Text(LanguageTranslation.current.contact_me_tab,
                    style: TextStyle(
                      fontFamily: FontFamily.workSans,
                      fontSize: 18,
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w600,
                    )),
              ),
              PortfolioFilledButton(
                buttonName: LanguageTranslation.current.lets_chat,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MobileTopAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Assets.images.icLogo.svg(),
          SizedBox(
            width: 4,
          ),
          Text(
            LanguageTranslation.current.aero_vision,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                fontFamily: FontFamily.zenKakuGothicAntique),
          ),
          Spacer(),
          Assets.images.icMenu.svg(),
        ],
      ),
    );
  }
}
