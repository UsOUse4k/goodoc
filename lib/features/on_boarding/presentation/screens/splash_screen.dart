import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goodoc/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:goodoc/gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String route = "splash";

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        context.go("/${OnBoardingScreen.route}");
      },
    );

    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.images.logo.path,
          width: 208,
          height: 220,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
