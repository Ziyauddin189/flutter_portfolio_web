import 'package:flutter/material.dart';
import 'package:flutter_web/gen/fonts.gen.dart';
import 'package:flutter_web/generated/l10n.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactContainer extends StatelessWidget {
  final SizingInformation sizingInformation;

  const ContactContainer({Key? key, required this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = sizingInformation.isMobile;
    final isTablet = sizingInformation.isTablet;

    return Container(
      child: isMobile
          ? MobileContact()
          : (isTablet ? MobileContact() : DesktopContact()),
    );
  }
}

class DesktopContact extends StatefulWidget {
  const DesktopContact({super.key});

  @override
  State<DesktopContact> createState() => _DesktopContactState();
}

class _DesktopContactState extends State<DesktopContact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(81, 100, 81, 50),
      color: Color(0xFF0077FF),
      height: 788,
      child: Column(
        children: [
          Text(
            LanguageTranslation.current.contact_me,
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
            LanguageTranslation.current.request_free,
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
              fontFamily: "WorkSans",
              color: Color(0xFFFFFFFF),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: DetailContainer()),
              SizedBox(width: 20),
              Expanded(
                child: FormContainer(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MobileContact extends StatefulWidget {
  const MobileContact({super.key});

  @override
  State<MobileContact> createState() => _MobileContactState();
}

class _MobileContactState extends State<MobileContact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Color(0xFF0077FF),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 950,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    LanguageTranslation.current.contact_me,
                    style: TextStyle(
                      fontSize: 18.0,
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
                    LanguageTranslation.current.request_free,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: "WorkSans",
                      color: Color(0xFFFFFFFF),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailContainer(),
                      SizedBox(height: 20),
                      FormContainer(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 514,
        height: 272,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LanguageTranslation.current.hotline,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "WorkSans",
                  fontWeight: FontWeight.w700),
            ),
            Text(
              LanguageTranslation.current.number,
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "WorkSans",
                  fontWeight: FontWeight.w700),
            ),
            Spacer(),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "WorkSans",
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                children: [
                  TextSpan(
                    text: LanguageTranslation.current.address,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: LanguageTranslation.current.address_detail,
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "WorkSans",
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                children: [
                  TextSpan(
                    text: LanguageTranslation.current.email,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: LanguageTranslation.current.email_detail,
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "WorkSans",
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                children: [
                  TextSpan(
                    text: LanguageTranslation.current.fax,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: LanguageTranslation.current.fax_detail,
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "WorkSans",
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                children: [
                  TextSpan(
                    text: LanguageTranslation.current.work_hour,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: LanguageTranslation.current.work_hour_detail,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 514,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: LanguageTranslation.current.name,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: LanguageTranslation.current.email_address,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: LanguageTranslation.current.how_can_we_help_you,
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: LanguageTranslation.current.how_can_we_help_you,
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              CustomCheckbox(value: false),
              SizedBox(
                width: 4,
              ),
              Text(
                LanguageTranslation.current.by_submitting,
                style: TextStyle(
                  color: Color(0xFFE9EFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.5),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 54,
              width: 250,
              padding: const EdgeInsets.fromLTRB(40, 13.5, 40, 13.5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: const Color(0xFF00489A),
              ),
              child: Text(
                'Request Now',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: FontFamily.workSans,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const CustomCheckbox({
    Key? key,
    required this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
          widget.onChanged?.call(_value);
        });
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: _value
            ? Icon(
                Icons.check,
                size: 17,
                color: Colors.black,
              )
            : null,
      ),
    );
  }
}
