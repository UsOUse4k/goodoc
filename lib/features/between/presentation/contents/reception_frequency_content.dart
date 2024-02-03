import 'package:flutter/material.dart';
import 'package:goodoc/features/common/presentation/widgets/common_outlined_button.dart';

class ReceptionFrequencyContent extends StatelessWidget {
  const ReceptionFrequencyContent({
    super.key,
    this.onNextTap,
  });

  final VoidCallback? onNextTap;

  @override
  Widget build(BuildContext context) {
    final List<String> buttonTexts = [
      "Каждый день",
      "Три раза в день",
      "По определенным дням недели",
      "По повторяющемуся циклу",
      "Каждые X дней",
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
