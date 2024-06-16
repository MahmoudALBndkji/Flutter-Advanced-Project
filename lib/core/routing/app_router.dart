import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/routing/routes.dart';
import 'package:flutter_advanced_project/features/login/login_screen.dart';
import 'package:flutter_advanced_project/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return null;
    }
  }
}