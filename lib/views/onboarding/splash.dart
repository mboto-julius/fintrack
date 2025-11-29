import 'package:fintrack/resources/app_colours.dart';
import 'package:fintrack/resources/app_routes.dart';
import 'package:fintrack/resources/app_strings.dart';
import 'package:fintrack/resources/app_styles.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.primaryColour,
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppStyles.titleX(size: 40, color: Colors.white),
        ),
      ),
    );
  }

  @override
  void initState() {
    initApp();
    super.initState();
  }

  void initApp() {
    Timer(const Duration(seconds: 5), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, AppRoutes.walkthrough);
    });
  }
}
