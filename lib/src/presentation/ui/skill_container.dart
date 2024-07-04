import 'package:flutter/material.dart';
import 'package:flutter_web/gen/assets.gen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const SkillContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = sizingInformation.isMobile;
    final isTablet = sizingInformation.isTablet;
    final isSmallTab = sizingInformation.localWidgetSize.width <
        const RefinedBreakpoints().tabletSmall;

    return Container(
      color: Color(0xFFF8F8F8),
      child: isSmallTab
          ? MobileSkillContainer()
          : (isMobile
              ? MobileSkillContainer()
              : (isTablet ? MobileSkillContainer() : DesktopSkillContainer())),
    );
  }
}

class DesktopSkillContainer extends StatelessWidget {
  const DesktopSkillContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Assets.images.icJqueryPng.image(),
          ),
          Expanded(
            child: Assets.images.icWordpressPng.image(),
          ),
          Expanded(
            child: Assets.images.icLessPng.image(),
          ),
          Expanded(
            child: Assets.images.icSaas.image(),
          ),
          Expanded(
            child: Assets.images.icSpotifyPng.image(),
          ),
        ],
      ),
    );
  }
}

class MobileSkillContainer extends StatelessWidget {
  const MobileSkillContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Assets.images.icJqueryPng.image(),
          Assets.images.icWordpressPng.image(),
          Assets.images.icLessPng.image(),
          Assets.images.icSaas.image(),
          Assets.images.icSpotifyPng.image(),
        ],
      ),
    );
  }
}
