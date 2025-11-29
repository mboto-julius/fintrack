import 'package:fintrack/resources/app_colours.dart';
import 'package:fintrack/resources/app_routes.dart';
import 'package:fintrack/resources/app_strings.dart';
import 'package:fintrack/views/onboarding/splash.dart';
import 'package:fintrack/views/onboarding/walkthrough.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColours.primaryColour),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.walkthrough: (context) => const WalkthroughScreen(),
      },
    );
  }
}
