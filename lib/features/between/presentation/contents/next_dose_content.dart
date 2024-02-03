import 'package:flutter/cupertino.dart'
    show CupertinoDatePicker, CupertinoDatePickerMode;
import 'package:flutter/material.dart';
import 'package:goodoc/features/common/presentation/widgets/common_filled_button.dart';

class NextDoseContent extends StatelessWidget {
  const NextDoseContent({super.key, this.onNextTap});

  final VoidCallback? onNextTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 213,
          constraints: const BoxConstraints(maxWidth: 300),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
          ),
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            backgroundColor: const Color(0xFFF1F4FF),
            onDateTimeChanged: (value) {},
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CommonFilledButton(
            text: "Продолжить",
            onTap: () {
              onNextTap?.call();
            },
          ),
        ),
        const SizedBox(height: 81),
      ],
    );
  }
}
