import 'package:flutter/material.dart';
import 'package:goodoc/config/router.dart';

class GoodocApp extends StatelessWidget {
  const GoodocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppNavigation.router,
    );
  }
}
