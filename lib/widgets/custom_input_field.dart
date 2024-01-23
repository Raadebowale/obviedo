import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:obviedo/utils/app_colors.dart';

class CustomInputField extends StatefulWidget {
  final String header;
  final Widget icon;
  final String? hint;
  final TextStyle? headerStyle;

  final Color? borderColor;
  final double? borderRadius;

  final bool isPassword;

  final VoidCallback? onpressed;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  const CustomInputField({
    super.key,
    required this.header,
    this.hint,
    this.isPassword = false,
    this.onpressed,
    this.controller,
    this.validator,
    this.borderColor,
    required this.icon,
    this.keyboardType,
    this.borderRadius,
    this.inputFormatters,
    this.headerStyle,
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.header,
          style: widget.headerStyle ??
              const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.borderColor ?? AppColors.whiteOp50,
            ),
            borderRadius: BorderRadius.circular(
              widget.borderRadius ?? 10,
            ),
          ),
          child: Row(
            children: [
              widget.icon,
              const SizedBox(
                width: 5,
              ),
              const SizedBox(
                height: 30,
                child: VerticalDivider(
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: TextFormField(
                  controller: widget.controller,
                  validator: widget.validator,
                  keyboardType: widget.keyboardType,
                  inputFormatters: widget.inputFormatters,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    hintText: widget.hint,
                    hintStyle: const TextStyle(
                      color: AppColors.whiteOp50,
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                  ),
                  obscureText: widget.isPassword ? isVisible : false,
                ),
              ),
              if (widget.isPassword) ...[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: Icon(
                    isVisible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
