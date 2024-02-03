import 'package:flutter/material.dart';
import 'package:goodoc/features/main/presentation/pages/calendar_page.dart';
import 'package:goodoc/features/main/presentation/pages/chat_page.dart';
import 'package:goodoc/features/main/presentation/widgets/main_bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const String route = "main";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final PageController pageController;

  @override
  void initState() {
    super.initState();

    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Stack(
            children: [
              PageView(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  CalendarPage(),
                  ChatPage(),
                ],
              ),
              Positioned(
                bottom: 0,
                child: MainBottomNavigationBar(
                  onPageChanged: (value) {
                    pageController.animateToPage(
                      value,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
