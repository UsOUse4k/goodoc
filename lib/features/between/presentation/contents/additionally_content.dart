import 'package:flutter/material.dart';
import 'package:goodoc/features/common/presentation/widgets/common_outlined_button.dart';

class AdditionallyContent extends StatelessWidget {
  const AdditionallyContent({
    super.key,
    this.onNextTap,
  });

  final VoidCallback? onNextTap;

  @override
  Widget build(BuildContext context) {
    final List<String> buttonTexts = [
      "Установить продолжительность лечения?",
      "Получать напоминания\nо пополнении лекарств?",
      "Добавить инструкции?",
      "Изменить знакчок лекарства?",
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
