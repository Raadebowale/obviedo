import 'package:flutter/material.dart';
import 'package:obviedo/routes/route_path.dart';
import 'package:obviedo/screens/login_screen.dart';
import 'package:obviedo/screens/onboarding_screen.dart';
import 'package:obviedo/screens/register_screen.dart';
import 'package:obviedo/screens/splash_screen.dart';

myRoutes(BuildContext context) {
  return {
    RoutePath.splash: (context) => const SplashScreen(),
    RoutePath.onboarding: (context) => const OnboardingScreen(),
    RoutePath.login: (context) => const LoginScreen(),
    RoutePath.register: (context) => const RegisterScreen(),
  };
}
