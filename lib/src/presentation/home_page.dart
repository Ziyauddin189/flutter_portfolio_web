import 'package:flutter/material.dart';
import 'package:flutter_web/src/presentation/ui/about_container.dart';
import 'package:flutter_web/src/presentation/ui/contact_container.dart';
import 'package:flutter_web/src/presentation/ui/footer_container.dart';
import 'package:flutter_web/src/presentation/ui/intro_container.dart';
import 'package:flutter_web/src/presentation/ui/milestone_container.dart';
import 'package:flutter_web/src/presentation/ui/projects_container.dart';
import 'package:flutter_web/src/presentation/ui/services_container.dart';
import 'package:flutter_web/src/presentation/ui/skill_container.dart';
import 'package:flutter_web/src/presentation/ui/testimonial/testimonial_container.dart';
import 'package:flutter_web/src/presentation/ui/top_app_bar.dart';
import 'package:data/src/data.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return SingleChildScrollView(
            child: Column(
              children: [
                TopAppBar(sizingInformation: sizingInformation),
                IntroContainer(sizingInformation: sizingInformation),
                SkillContainer(sizingInformation: sizingInformation),
                AboutContainer(sizingInformation: sizingInformation),
                ServiceContainer(sizingInformation: sizingInformation),
                MilestoneContainer(sizingInformation: sizingInformation),
                ProjectsContainer(sizingInformation: sizingInformation),
                TestimonialContainer(sizingInformation: sizingInformation,data: TestimonialItemList(items: testimonialData),),
                ContactContainer(sizingInformation: sizingInformation),
                FooterContainer(sizingInformation: sizingInformation),
              ],
            ),
          );
        },
      ),
    );
  }
}


final List<TestimonialItem> testimonialData = [
  TestimonialItem(
    image: AssetImage('assets/images/client_1.png'),
    starCount: 5,
    description:
    'Lorem ipsum dolor sit amet consectetur. Nibh porttitor aliquet tellus eget egestas. Enim ultrices dictumst tortor in eget neque vestibulum potenti tempus',
    name: 'Savannah Nguyen',
    position: 'President of Sales',
  ),
  TestimonialItem(
    image: AssetImage('assets/images/client_2.png'),
    starCount: 5,
    description:
    'Lorem ipsum dolor sit amet consectetur. Nibh porttitor aliquet tellus eget egestas. Enim ultrices dictumst tortor in eget neque vestibulum potenti tempus',
    name: 'Jenny Wilson',
    position: 'Medical Assistant',
  ),
  TestimonialItem(
    image: AssetImage('assets/images/client_3.png'),
    starCount: 5,
    description:
    'Lorem ipsum dolor sit amet consectetur. Nibh porttitor aliquet tellus eget egestas. Enim ultrices dictumst tortor in eget neque vestibulum potenti tempus',
    name: 'Esther Howard',
    position: 'Nursing Assistant',
  ),
  TestimonialItem(
    image: AssetImage('assets/images/client_4.png'),
    starCount: 5,
    description:
    'Lorem ipsum dolor sit amet consectetur. Eu velit tellus pellentesque tincidunt arcu convallis bibendum. Orci diam leo non molestie dictum orci pulvinar massa',
    name: 'Cameron Williamson',
    position: 'Marketing Coordinator',
  ),
];