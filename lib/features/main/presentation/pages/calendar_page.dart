import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goodoc/features/between/presentation/screens/between_screen.dart';
import 'package:goodoc/features/common/presentation/widgets/common_filled_button.dart';
import 'package:goodoc/features/main/presentation/widgets/calendar_card.dart';
import 'package:goodoc/features/main/presentation/widgets/medicine_card.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 36.5),
        const Text(
          "Календарь",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 36.5),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CalendarCard(
              isSelected: true,
              day: "16",
              dayOfTheWeek: "П",
            ),
            CalendarCard(
              day: "17",
              dayOfTheWeek: "В",
            ),
            CalendarCard(
              day: "18",
              dayOfTheWeek: "С",
            ),
            CalendarCard(
              day: "19",
              dayOfTheWeek: "Ч",
            ),
            CalendarCard(
              day: "20",
              dayOfTheWeek: "П",
            ),
          ],
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "8.00",
                  style: GoogleFonts.darkerGrotesque(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const MedicineCard(isConsumed: true),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "12.00",
                  style: GoogleFonts.darkerGrotesque(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const MedicineCard(),
            ],
          ),
        ),
        const Spacer(flex: 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CommonFilledButton(
            text: "Добавить лекарство",
            onTap: () {
              context.push("/${BetweenScreen.route}");
            },
          ),
        ),
        const Spacer(flex: 3),
      ],
    );
  }
}
