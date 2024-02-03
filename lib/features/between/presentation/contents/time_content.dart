import 'package:flutter/cupertino.dart'
    show CupertinoDatePicker, CupertinoDatePickerMode;
import 'package:flutter/material.dart';
import 'package:goodoc/features/between/presentation/widgets/dose_field.dart';
import 'package:goodoc/features/common/presentation/widgets/common_filled_button.dart';

class TimeContent extends StatelessWidget {
  const TimeContent({super.key, this.onNextTap});

  final VoidCallback? onNextTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: DoseField(
            onChanged: (value) {},
          ),
        ),
        const SizedBox(height: 41),
        Container(
          height: 213.5,
          constraints: const BoxConstraints(maxWidth: 200),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
          ),
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.time,
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
