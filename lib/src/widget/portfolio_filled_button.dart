import 'package:flutter/material.dart';
import 'package:flutter_web/gen/fonts.gen.dart';

class PortfolioFilledButton extends StatelessWidget {
  const PortfolioFilledButton({
    Key? key,
    required this.buttonName,
    this.onPressed,
    this.isDisable = false,
    this.isLoading = false,
    this.child,
    this.style,
    this.size = 'medium', // Default size is medium
  }) : super(key: key);

  final String buttonName;
  final VoidCallback? onPressed;
  final bool isDisable;
  final bool isLoading;
  final Widget? child;
  final TextStyle? style;
  final String size;

  @override
  Widget build(BuildContext context) {
    double height;
    double fontSize;

    EdgeInsets padding;

    switch (size) {
      case 'small':
        height = 30;
        fontSize = 15;
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
        height = 50;
        fontSize = 20;
        padding = const EdgeInsets.fromLTRB(40, 13.5, 40, 13.5);
    }

    final TextStyle defaultStyle = TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.workSans,
      color: isDisable ? Colors.grey : Colors.white,
    );

    return GestureDetector(
      onTap: (onPressed != null && !isDisable) ? onPressed : null,
      child: Container(
        height: height,
        padding: padding,
        // Adjust padding as needed
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: isDisable ? Colors.grey[400] : const Color(0xFF0077FF),
        ),
        child: isLoading
            ? const CircularProgressIndicator()
            : child ??
                Text(
                  buttonName,
                  style: style ?? defaultStyle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
      ),
    );
  }
}
