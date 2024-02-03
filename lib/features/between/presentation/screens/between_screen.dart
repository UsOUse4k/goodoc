import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goodoc/features/between/presentation/contents/add_medicine_content.dart';
import 'package:goodoc/features/between/presentation/contents/additionally_content.dart';
import 'package:goodoc/features/between/presentation/contents/next_dose_content.dart';
import 'package:goodoc/features/between/presentation/contents/reception_frequency_content.dart';
import 'package:goodoc/features/between/presentation/contents/release_form_content.dart';
import 'package:goodoc/features/between/presentation/contents/time_content.dart';
import 'package:goodoc/features/main/presentation/screens/main_screen.dart';
import 'package:goodoc/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class BetweenScreen extends StatelessWidget {
  static const String route = "between";

  const BetweenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        child: BetweenLayout(),
      ),
    );
  }
}

class BetweenLayout extends StatefulWidget {
  const BetweenLayout({super.key});

  @override
  State<BetweenLayout> createState() => _BetweenLayoutState();
}

class _BetweenLayoutState extends State<BetweenLayout> {
  late final int maxPages;

  late String title;
  late String subTitle;
  late String imagePath;
  late Widget content;

  int page = 1;

  @override
  void initState() {
    super.initState();

    maxPages = 6;

    title = "Лекарство";
    subTitle = "Какое лекарство хотите добавить?";
    imagePath = Assets.images.pills.path;
    content = AddMedicineContent(
      onNextTap: () {
        nextPage();
      },
    );
  }

  void nextPage() {
    setState(() {
      page++;

      switch (page) {
        case 2:
          title = "Форма выпуска";
          subTitle = "Какая форма выпуска у лекарства?";
          imagePath = Assets.images.medicine.path;
          content = ReleaseFormContent(
            onNextTap: () {
              nextPage();
            },
          );
          break;
        case 3:
          title = "Частота приема";
          subTitle = "Как часто вы его принимаете?";
          imagePath = Assets.images.dayNight.path;
          content = ReceptionFrequencyContent(
            onNextTap: () {
              nextPage();
            },
          );
          break;
        case 4:
          title = "Следующая доза";
          subTitle = "Когда вам нужно принять следующую дозу??";
          imagePath = Assets.images.date.path;
          content = NextDoseContent(
            onNextTap: () {
              nextPage();
            },
          );
          break;
        case 5:
          title = "Время";
          subTitle = "Установите время и дозу";
          imagePath = Assets.images.time.path;
          content = TimeContent(
            onNextTap: () {
              nextPage();
            },
          );
          break;
        case 6:
          title = "Дополнительно";
          subTitle = "Почти готово. Хотели бы вы:";
          imagePath = Assets.images.note.path;
          content = AdditionallyContent(
            onNextTap: () {
              context.go("/${MainScreen.route}");
            },
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 98),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox.fromSize(
                        size: const Size.square(88),
                        child: CircularProgressIndicator(
                          value: ((100 / maxPages) * page) / 100,
                          strokeWidth: 9,
                          strokeCap: StrokeCap.round,
                          color: const Color(0xFF0043CE),
                          backgroundColor: const Color(0xFFD0E2FF),
                        ),
                      ),
                      Image.asset(
                        imagePath,
                        width: 55,
                        height: 55,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "$page из 6",
                    style: GoogleFonts.lato(
                      fontSize: 16.5,
                      color: const Color(0xFF262626),
                    ),
                  ),
                ],
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 272),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.lato(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF0043CE),
                      ),
                    ),
                    const SizedBox(height: 5.5),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      style: GoogleFonts.lato(
                        fontSize: 13.75,
                        color: const Color(0xFF525252),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: Container(
            height: double.infinity,
            padding: const EdgeInsets.only(
              left: 24,
              top: 30,
              right: 24,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF6C63FF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        subTitle,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Expanded(child: content),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
