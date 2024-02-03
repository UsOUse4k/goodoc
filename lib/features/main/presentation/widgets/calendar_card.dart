import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarCard extends StatelessWidget {
  const CalendarCard({
    super.key,
    this.isSelected,
    this.day,
    this.dayOfTheWeek,
  });

  final bool? isSelected;
  final String? day;
  final String? dayOfTheWeek;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: isSelected ?? false ? const Color(0xFF02036D) : null,
        border: isSelected ?? false
            ? null
            : Border.all(
                color: Colors.black,
                width: 1,
              ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 16,
      ),
      child: Column(
        children: [
          Text(
            day ?? "1",
            style: GoogleFonts.darkerGrotesque(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: isSelected ?? false ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            dayOfTheWeek ?? "П",
            style: GoogleFonts.darkerGrotesque(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: isSelected ?? false ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
