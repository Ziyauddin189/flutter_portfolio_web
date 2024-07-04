// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class LanguageTranslation {
  LanguageTranslation();

  static LanguageTranslation? _current;

  static LanguageTranslation get current {
    assert(_current != null,
        'No instance of LanguageTranslation was loaded. Try to initialize the LanguageTranslation delegate before accessing LanguageTranslation.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<LanguageTranslation> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = LanguageTranslation();
      LanguageTranslation._current = instance;

      return instance;
    });
  }

  static LanguageTranslation of(BuildContext context) {
    final instance = LanguageTranslation.maybeOf(context);
    assert(instance != null,
        'No instance of LanguageTranslation present in the widget tree. Did you add LanguageTranslation.delegate in localizationsDelegates?');
    return instance!;
  }

  static LanguageTranslation? maybeOf(BuildContext context) {
    return Localizations.of<LanguageTranslation>(context, LanguageTranslation);
  }

  /// `ABOUT ME`
  String get about_me {
    return Intl.message(
      'ABOUT ME',
      name: 'about_me',
      desc: '',
      args: [],
    );
  }

  /// `Hello there! I'm Robert Junior. I specialize in web design and development, and I'm deeply passionate and committed to my craft. With 20 years of experience as a professional graphic designer`
  String get hello_there {
    return Intl.message(
      'Hello there! I\'m Robert Junior. I specialize in web design and development, and I\'m deeply passionate and committed to my craft. With 20 years of experience as a professional graphic designer',
      name: 'hello_there',
      desc: '',
      args: [],
    );
  }

  /// `User Experience Design - UI/UX`
  String get user_experience {
    return Intl.message(
      'User Experience Design - UI/UX',
      name: 'user_experience',
      desc: '',
      args: [],
    );
  }

  /// `Web & User Interface Design - Development`
  String get web_user {
    return Intl.message(
      'Web & User Interface Design - Development',
      name: 'web_user',
      desc: '',
      args: [],
    );
  }

  /// `Interaction Design - Animation`
  String get interaction_design {
    return Intl.message(
      'Interaction Design - Animation',
      name: 'interaction_design',
      desc: '',
      args: [],
    );
  }

  /// `Main Skills`
  String get main_skills {
    return Intl.message(
      'Main Skills',
      name: 'main_skills',
      desc: '',
      args: [],
    );
  }

  /// `Awards`
  String get awards {
    return Intl.message(
      'Awards',
      name: 'awards',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get education {
    return Intl.message(
      'Education',
      name: 'education',
      desc: '',
      args: [],
    );
  }

  /// `20 Year’s Experience\n`
  String get twenty_years {
    return Intl.message(
      '20 Year’s Experience\n',
      name: 'twenty_years',
      desc: '',
      args: [],
    );
  }

  /// `on Product Design`
  String get on_product {
    return Intl.message(
      'on Product Design',
      name: 'on_product',
      desc: '',
      args: [],
    );
  }

  /// `CONTACT ME`
  String get contact_me {
    return Intl.message(
      'CONTACT ME',
      name: 'contact_me',
      desc: '',
      args: [],
    );
  }

  /// `Request Free Consultancy`
  String get request_free {
    return Intl.message(
      'Request Free Consultancy',
      name: 'request_free',
      desc: '',
      args: [],
    );
  }

  /// `Hotline 24/7`
  String get hotline {
    return Intl.message(
      'Hotline 24/7',
      name: 'hotline',
      desc: '',
      args: [],
    );
  }

  /// `(+23) 5535 68 68`
  String get number {
    return Intl.message(
      '(+23) 5535 68 68',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Address: `
  String get address {
    return Intl.message(
      'Address: ',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `2972 Westheimer Rd. Santa Ana, Illinois 85486`
  String get address_detail {
    return Intl.message(
      '2972 Westheimer Rd. Santa Ana, Illinois 85486',
      name: 'address_detail',
      desc: '',
      args: [],
    );
  }

  /// `Email: `
  String get email {
    return Intl.message(
      'Email: ',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `nevaeh.simmons@example.com`
  String get email_detail {
    return Intl.message(
      'nevaeh.simmons@example.com',
      name: 'email_detail',
      desc: '',
      args: [],
    );
  }

  /// `Fax: `
  String get fax {
    return Intl.message(
      'Fax: ',
      name: 'fax',
      desc: '',
      args: [],
    );
  }

  /// `(702) 555-0122`
  String get fax_detail {
    return Intl.message(
      '(702) 555-0122',
      name: 'fax_detail',
      desc: '',
      args: [],
    );
  }

  /// `Work Hour: `
  String get work_hour {
    return Intl.message(
      'Work Hour: ',
      name: 'work_hour',
      desc: '',
      args: [],
    );
  }

  /// `Mon - Sat: 9:00 - 18:00`
  String get work_hour_detail {
    return Intl.message(
      'Mon - Sat: 9:00 - 18:00',
      name: 'work_hour_detail',
      desc: '',
      args: [],
    );
  }

  /// `Name *`
  String get name {
    return Intl.message(
      'Name *',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Email Address *`
  String get email_address {
    return Intl.message(
      'Email Address *',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `How can we help you?`
  String get how_can_we_help_you {
    return Intl.message(
      'How can we help you?',
      name: 'how_can_we_help_you',
      desc: '',
      args: [],
    );
  }

  /// `By submitting, I’m agreed to the Terms & Conditions`
  String get by_submitting {
    return Intl.message(
      'By submitting, I’m agreed to the Terms & Conditions',
      name: 'by_submitting',
      desc: '',
      args: [],
    );
  }

  /// `AeroVision`
  String get aero_vision {
    return Intl.message(
      'AeroVision',
      name: 'aero_vision',
      desc: '',
      args: [],
    );
  }

  /// `© Copyright 2023. All Rights Reserved.`
  String get copyright {
    return Intl.message(
      '© Copyright 2023. All Rights Reserved.',
      name: 'copyright',
      desc: '',
      args: [],
    );
  }

  /// `FOLLOW US:  `
  String get follow_us {
    return Intl.message(
      'FOLLOW US:  ',
      name: 'follow_us',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to my Portfolio`
  String get welcome {
    return Intl.message(
      'Welcome to my Portfolio',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Hi I’m\n`
  String get hi {
    return Intl.message(
      'Hi I’m\n',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `Robert Junior`
  String get robert_jr {
    return Intl.message(
      'Robert Junior',
      name: 'robert_jr',
      desc: '',
      args: [],
    );
  }

  /// `Product Designer`
  String get product_design {
    return Intl.message(
      'Product Designer',
      name: 'product_design',
      desc: '',
      args: [],
    );
  }

  /// `Collaborating with highly skilled individuals, our agency delivers top-quality services.`
  String get collaborating {
    return Intl.message(
      'Collaborating with highly skilled individuals, our agency delivers top-quality services.',
      name: 'collaborating',
      desc: '',
      args: [],
    );
  }

  /// `Hire Me!`
  String get hire_me {
    return Intl.message(
      'Hire Me!',
      name: 'hire_me',
      desc: '',
      args: [],
    );
  }

  /// `Download CV`
  String get download_cv {
    return Intl.message(
      'Download CV',
      name: 'download_cv',
      desc: '',
      args: [],
    );
  }

  /// `OUR MILESTONES`
  String get our_milestones {
    return Intl.message(
      'OUR MILESTONES',
      name: 'our_milestones',
      desc: '',
      args: [],
    );
  }

  /// `What sets our studio apart for your projects?`
  String get what_sets {
    return Intl.message(
      'What sets our studio apart for your projects?',
      name: 'what_sets',
      desc: '',
      args: [],
    );
  }

  /// `Figma ipsum component variant main layer. Hand.`
  String get figma_ipsum {
    return Intl.message(
      'Figma ipsum component variant main layer. Hand.',
      name: 'figma_ipsum',
      desc: '',
      args: [],
    );
  }

  /// `OUR PROJECTS`
  String get our_projects {
    return Intl.message(
      'OUR PROJECTS',
      name: 'our_projects',
      desc: '',
      args: [],
    );
  }

  /// `Presenting My Design Portfolio and Case Studies`
  String get presenting {
    return Intl.message(
      'Presenting My Design Portfolio and Case Studies',
      name: 'presenting',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `UI/UX Design`
  String get ui_ux_design {
    return Intl.message(
      'UI/UX Design',
      name: 'ui_ux_design',
      desc: '',
      args: [],
    );
  }

  /// `Branding Design`
  String get branding_design {
    return Intl.message(
      'Branding Design',
      name: 'branding_design',
      desc: '',
      args: [],
    );
  }

  /// `WordPress`
  String get word_press {
    return Intl.message(
      'WordPress',
      name: 'word_press',
      desc: '',
      args: [],
    );
  }

  /// `SERVICES`
  String get services {
    return Intl.message(
      'SERVICES',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Exploring my design `
  String get exploring {
    return Intl.message(
      'Exploring my design ',
      name: 'exploring',
      desc: '',
      args: [],
    );
  }

  /// `skills`
  String get skills {
    return Intl.message(
      'skills',
      name: 'skills',
      desc: '',
      args: [],
    );
  }

  /// `We transform your ideas into a distinctive web project that both inspires you and captivates your customers`
  String get we_transform {
    return Intl.message(
      'We transform your ideas into a distinctive web project that both inspires you and captivates your customers',
      name: 'we_transform',
      desc: '',
      args: [],
    );
  }

  /// `Website / App Design UX / UI Design`
  String get website_app {
    return Intl.message(
      'Website / App Design UX / UI Design',
      name: 'website_app',
      desc: '',
      args: [],
    );
  }

  /// `Creating Engaging Digital Experiences for Websites and Apps through UX/UI Design`
  String get creating {
    return Intl.message(
      'Creating Engaging Digital Experiences for Websites and Apps through UX/UI Design',
      name: 'creating',
      desc: '',
      args: [],
    );
  }

  /// `Learn more`
  String get learn_more {
    return Intl.message(
      'Learn more',
      name: 'learn_more',
      desc: '',
      args: [],
    );
  }

  /// `Testimonials`
  String get testimonials {
    return Intl.message(
      'Testimonials',
      name: 'testimonials',
      desc: '',
      args: [],
    );
  }

  /// `The Trust From Clients`
  String get the_trust {
    return Intl.message(
      'The Trust From Clients',
      name: 'the_trust',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `About Me`
  String get about_me_tab {
    return Intl.message(
      'About Me',
      name: 'about_me_tab',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get services_tab {
    return Intl.message(
      'Services',
      name: 'services_tab',
      desc: '',
      args: [],
    );
  }

  /// `Blog`
  String get blog {
    return Intl.message(
      'Blog',
      name: 'blog',
      desc: '',
      args: [],
    );
  }

  /// `Contact Me`
  String get contact_me_tab {
    return Intl.message(
      'Contact Me',
      name: 'contact_me_tab',
      desc: '',
      args: [],
    );
  }

  /// `Let's Chat`
  String get lets_chat {
    return Intl.message(
      'Let\'s Chat',
      name: 'lets_chat',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate
    extends LocalizationsDelegate<LanguageTranslation> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<LanguageTranslation> load(Locale locale) =>
      LanguageTranslation.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
