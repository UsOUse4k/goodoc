import 'package:flutter/material.dart';
import 'package:goodoc/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({
    super.key,
    this.onPageChanged,
  });

  final ValueChanged<int>? onPageChanged;

  @override
  State<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  bool isCalendarSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99,
      constraints: const BoxConstraints(maxWidth: 375),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            Assets.images.bottomNavigationBar.path,
          ),
          Positioned(
            left: 47,
            bottom: 15,
            child: GestureDetector(
              onTap: () {
                widget.onPageChanged?.call(0);

                setState(() {
                  isCalendarSelected = true;
                });
              },
              child: Column(
                children: [
                  isCalendarSelected
                      ? Image.asset(
                          Assets.images.calendarSelected.path,
                          width: 19.5,
                          height: 21.5,
                        )
                      : Image.asset(
                          Assets.images.calendar.path,
                          width: 19.5,
                          height: 21.5,
                        ),
                  const SizedBox(height: 6.25),
                  const Text(
                    "Календарь",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 47,
            bottom: 15,
            child: Column(
              children: [
                Image.asset(
                  Assets.images.profile.path,
                  width: 17.5,
                  height: 21.5,
                ),
                const SizedBox(height: 6.25),
                const Text(
                  "Профиль",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 33,
            child: GestureDetector(
              onTap: () {
                widget.onPageChanged?.call(1);

                setState(() {
                  isCalendarSelected = false;
                });
              },
              child: Container(
                width: 66,
                height: 66,
                padding: const EdgeInsets.only(top: 12.25),
                decoration: const BoxDecoration(
                  color: Color(0xFF02036D),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 33,
                      color: Colors.white,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    isCalendarSelected
                        ? Image.asset(
                            Assets.images.chat.path,
                            width: 24,
                            height: 24,
                          )
                        : Image.asset(
                            Assets.images.chatSelected.path,
                            width: 24,
                            height: 24,
                          ),
                    const SizedBox(height: 6.25),
                    Text(
                      "Бот",
                      style: GoogleFonts.workSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
