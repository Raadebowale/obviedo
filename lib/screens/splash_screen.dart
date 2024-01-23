import 'package:flutter/material.dart';
import 'package:obviedo/routes/route_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  navigate() async {
    await Future.delayed(const Duration(seconds: 5));
    if (mounted) {
      Navigator.pushReplacementNamed(context, RoutePath.onboarding);
    }

    /* if (user == null) {
      await Future.delayed(const Duration(seconds: 5));
      if (mounted) {
        Navigator.pushReplacementNamed(context, RoutePath.onboarding);
      }
    } else {
      
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {
        Navigator.pushReplacementNamed(context, RoutePath.main);
      }
    } */
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/splash_bg.png'),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 250,
            ),
            const SizedBox(height: 30),
            const SizedBox(
              width: 100,
              child: CircularProgressIndicator.adaptive(
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromRGBO(158, 208, 230, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
