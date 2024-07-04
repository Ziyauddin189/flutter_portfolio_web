import 'package:flutter/material.dart';
import 'package:flutter_web/gen/fonts.gen.dart';

class PortfolioOutlinedButton extends StatelessWidget {
  const PortfolioOutlinedButton({
    Key? key,
    required this.buttonName,
    this.onPressed,
    this.isLoading = false,
    this.isDisable = false,
    this.icon,
    this.style,
    this.size = 'medium',
  }) : super(key: key);

  final String buttonName;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isDisable;
  final Widget? icon;
  final TextStyle? style;
  final String size; // New parameter to indicate button size

  @override
  Widget build(BuildContext context) {
    double height;
    double fontSize;

    EdgeInsets padding;

    switch (size) {
      case 'small':
        height = 32;
        fontSize = 14;
        padding = const EdgeInsets.fromLTRB(30, 7.5, 30, 7.5);
        break;
      case 'medium':
        height = 50;
        fontSize = 20;
        padding = const EdgeInsets.fromLTRB(40, 13.5, 40, 13.5);
        break;
      case 'large':
        height = 70;
        fontSize = 25;
        padding = const EdgeInsets.fromLTRB(50, 18.5, 50, 18.5);
        break;
      default:
        height = 50; // Default to medium size
        fontSize = 20;
        padding = const EdgeInsets.fromLTRB(40, 13.5, 40, 13.5);
    }

    return GestureDetector(
      onTap: (onPressed != null && !isDisable) ? onPressed : null,
      child: Container(
        height: height,
        padding: padding,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(
            color: Color(0xFF0077FF),
            width: 1.0,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                buttonName,
                style: style ??
                    TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontFamily.workSans,
                      color: Color(0xFF0077FF),
                    ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            if (icon != null) SizedBox(width: 8),
            if (icon != null) icon!,
          ],
        ),
      ),
    );
  }
}
