import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:mobility_mate/core/pages/Onboarding/widgets/Connection.dart';
import 'package:mobility_mate/core/pages/Onboarding/widgets/Exercise.dart';
import 'package:mobility_mate/core/pages/Onboarding/widgets/Progress.dart';
import 'package:mobility_mate/core/pages/Onboarding/widgets/Welcome.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() {
    return _OnboardingScreenState();
  }
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      final pages = [
        WelcomeScreen(),
        Exercise(),
        ProgressScreen(),
        ConnectionScreen()
      ];

    return Scaffold(
      body: LiquidSwipe(
        pages:pages,
        positionSlideIcon: 0,
        slideIconWidget: Icon(
          Icons.arrow_back_ios,
          size: 30,
          color: Colors.green,
        )
      )
    );
  }
}