import 'package:flutter/material.dart';
import 'package:goodoc/features/common/presentation/widgets/common_outlined_button.dart';

class ReleaseFormContent extends StatelessWidget {
  const ReleaseFormContent({
    super.key,
    this.onNextTap,
  });

  final VoidCallback? onNextTap;

  @override
  Widget build(BuildContext context) {
    final List<String> buttonTexts = [
      "Таблетка",
      "Инъекция",
      "Раствор (Жидкость)",
      "Капли",
      "Ингалятор",
      "Порошок",
      "Другое",
    ];

    return ListView.separated(
      shrinkWrap: true,
      itemCount: buttonTexts.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemBuilder: (context, index) => CommonOutlinedButton(
        text: buttonTexts[index],
        onTap: () {
          onNextTap?.call();
        },
      ),
    );
  }
}
