import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MilestoneContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const MilestoneContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = sizingInformation.isMobile;
    final isTablet = sizingInformation.isTablet;

    return Container(
      color: Color(0xFF0077FF),
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 10.0 : 30.0,
        horizontal: isMobile ? 46.5 : 81,
      ),
      child: isMobile
          ? MobileMilestone()
          : (isTablet ? MobileMilestone() : DesktopMilestone()),
    );
  }
}

class DesktopMilestone extends StatefulWidget {
  const DesktopMilestone({super.key});

  @override
  State<DesktopMilestone> createState() => DesktopMilestoneState();
}

class DesktopMilestoneState extends State<DesktopMilestone> {
  int firstMilestone = 0;
  int secondMilestone = 0;
  double thirdMilestone = 0.0;
  int fourthMilestone = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(milliseconds: 1), (Timer timer) {
      setState(() {
        if (firstMilestone < 8500) {
          firstMilestone += 50;
        }
      });
    });

    Timer.periodic(Duration(milliseconds: 30), (Timer timer) {
      setState(() {
        if (secondMilestone < 100) {
          secondMilestone++;
        }
      });
    });

    Timer.periodic(Duration(milliseconds: 90), (Timer timer) {
      setState(() {
        if (thirdMilestone < 3.5) {
          thirdMilestone += 0.1;
        }
      });
    });

    Timer.periodic(Duration(milliseconds: 40), (Timer timer) {
      setState(() {
        if (fourthMilestone < 240) {
          fourthMilestone++;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 678,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            LanguageTranslation.current.our_milestones,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              fontFamily: "WorkSans",
              color: Color(0xFFE9EFFF),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            LanguageTranslation.current.what_sets,
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
              fontFamily: "WorkSans",
              color: Color(0xFFFFFFFF),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 110,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: NumberCard(count: firstMilestone, symbol: '+')),
              Expanded(child: NumberCard(count: secondMilestone, symbol: '%')),
              Expanded(child: NumberCard(count: thirdMilestone, symbol: 'K')),
              Expanded(child: NumberCard(count: fourthMilestone, symbol: '+')),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileMilestone extends StatefulWidget {
  const MobileMilestone({super.key});

  @override
  State<MobileMilestone> createState() => _MobileMilestoneState();
}

class _MobileMilestoneState extends State<MobileMilestone> {
  int firstMilestone = 0;
  int secondMilestone = 0;
  double thirdMilestone = 0.0;
  int fourthMilestone = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(milliseconds: 1), (Timer timer) {
      setState(() {
        if (firstMilestone < 8500) {
          firstMilestone += 50;
        }
      });
    });

    Timer.periodic(Duration(milliseconds: 30), (Timer timer) {
      setState(() {
        if (secondMilestone < 100) {
          secondMilestone++;
        }
      });
    });

    Timer.periodic(Duration(milliseconds: 90), (Timer timer) {
      setState(() {
        if (thirdMilestone < 3.5) {
          thirdMilestone += 0.1;
        }
      });
    });

    Timer.periodic(Duration(milliseconds: 40), (Timer timer) {
      setState(() {
        if (fourthMilestone < 240) {
          fourthMilestone++;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0077FF),
      height: 1077,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            LanguageTranslation.current.our_milestones,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              fontFamily: "WorkSans",
              color: Color(0xFFE9EFFF),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            LanguageTranslation.current.what_sets,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w700,
              fontFamily: "WorkSans",
              color: Color(0xFFFFFFFF),
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NumberCard(count: firstMilestone, symbol: '+'),
              NumberCard(count: secondMilestone, symbol: '%'),
              NumberCard(count: thirdMilestone, symbol: 'K'),
              NumberCard(count: fourthMilestone, symbol: '+')
            ],
          ),
        ],
      ),
    );
  }
}

class NumberCard extends StatelessWidget {
  final dynamic count;
  final String symbol;

  NumberCard({required this.count, required this.symbol});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171,
      padding: EdgeInsets.only(top: 30.0),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              symbol == 'K'
                  ? '${count.toStringAsFixed(1)}$symbol'
                  : '$count$symbol',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
                fontFamily: "WorkSans",
                color: Color(0xFF333333),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                LanguageTranslation.current.figma_ipsum,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: "WorkSans",
                  color: Color(0xFF333333),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
