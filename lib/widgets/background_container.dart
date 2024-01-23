import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    super.key,
    required this.backgroundImage,
    required this.child,
  });

  final String backgroundImage;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
        ),
      ),
      child: child,
    );
  }
}
