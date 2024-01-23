import 'package:flutter/material.dart';
import 'package:obviedo/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String text;
  final bool border;
  final TextStyle? textStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? width;
  final double? padding;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final bool active;

  const CustomButton({
    super.key,
    required this.onpressed,
    required this.text,
    this.border = false,
    this.width,
    this.borderColor,
    this.textColor,
    this.backgroundColor,
    this.prefixIcon,
    this.suffixIcon,
    this.active = true,
    this.textStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: active ? onpressed : null,
      child: Container(
        alignment: Alignment.center,
        width: width ?? size.width * 0.8,
        padding: EdgeInsets.all(padding ?? 14),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primary,
          border: border
              ? Border.all(
                  color: borderColor ?? AppColors.primary,
                )
              : null,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon!,
              const SizedBox(width: 5),
            ],
            Text(
              text,
              style: textStyle ??
                  TextStyle(
                    color: textColor ?? Colors.white,
                    fontFamily: 'KronaOne',
                  ),
            ),
            if (suffixIcon != null) ...[
              const SizedBox(width: 5),
              suffixIcon!,
            ],
          ],
        ),
      ),
    );
  }
}
