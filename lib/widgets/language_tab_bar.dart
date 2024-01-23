import 'package:flutter/material.dart';
import 'package:obviedo/utils/app_colors.dart';
import 'package:obviedo/widgets/custom_tab.dart';

class LanguageTabBar extends StatefulWidget {
  const LanguageTabBar({
    super.key,
  });

  @override
  State<LanguageTabBar> createState() => _LanguageTabBarState();
}

class _LanguageTabBarState extends State<LanguageTabBar> {
  int selectedTabIndex = 0;
  List<Map<String, dynamic>> tabs = [
    {
      "label": "EDO",
      "borderRadius": BorderRadiusSide.left,
    },
    {
      "label": "ENGLISH",
      "borderRadius": BorderRadiusSide.right,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 14,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: List.generate(
          tabs.length,
          (index) => CustomTab(
            onpressed: () {
              setState(() {
                selectedTabIndex = index;
              });
            },
            label: tabs[index]["label"],
            isSelected: selectedTabIndex == index,
            selectedColor: AppColors.primary,
            unselectedColor: AppColors.primaryOp20,
            selectedTextColor: Colors.white,
            unselectedTextColor: Colors.white,
            borderRadius: 12.5,
            borderRadiusSide: tabs[index]["borderRadius"],
          ),
        ),
      ),
    );
  }
}
