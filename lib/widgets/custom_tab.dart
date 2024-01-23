import 'package:flutter/material.dart';

enum BorderRadiusSide { left, right }

class CustomTab extends StatefulWidget {
  // final int index;
  final String label;
  final bool isSelected;
  final VoidCallback onpressed;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? selectedTextColor;
  final Color? unselectedTextColor;
  final double? borderRadius;
  final BorderRadiusSide? borderRadiusSide;

  const CustomTab({
    super.key,
    // required this.index,
    required this.label,
    this.isSelected = false,
    required this.onpressed,
    this.selectedColor,
    this.selectedTextColor,
    this.unselectedTextColor,
    this.borderRadius,
    this.borderRadiusSide,
    this.unselectedColor,
  });

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onpressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.isSelected
              ? widget.selectedColor ?? Colors.red
              : widget.unselectedColor,
          borderRadius: BorderRadius.horizontal(
            left: widget.borderRadiusSide == BorderRadiusSide.left
                ? Radius.circular(
                    widget.borderRadius ?? 8.0,
                  )
                : Radius.zero,
            right: widget.borderRadiusSide == BorderRadiusSide.right
                ? Radius.circular(
                    widget.borderRadius ?? 8.0,
                  )
                : Radius.zero,
          ),
        ),
        child: Text(
          widget.label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: 'KronaOne',
            color: widget.isSelected
                ? widget.selectedTextColor ?? Colors.black
                : widget.unselectedTextColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
