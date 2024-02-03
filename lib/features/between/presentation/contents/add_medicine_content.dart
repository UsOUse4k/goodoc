import 'package:flutter/material.dart';
import 'package:goodoc/features/common/presentation/widgets/common_filled_button.dart';
import 'package:goodoc/features/common/presentation/widgets/common_text_field.dart';

class AddMedicineContent extends StatefulWidget {
  const AddMedicineContent({
    super.key,
    this.onNextTap,
  });

  final VoidCallback? onNextTap;

  @override
  State<AddMedicineContent> createState() => _AddMedicineContentState();
}

class _AddMedicineContentState extends State<AddMedicineContent> {
  late final TextEditingController textFieldController;

  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();

    textFieldController = TextEditingController()
      ..addListener(() {
        setState(() {
          isButtonEnabled = textFieldController.text.isNotEmpty;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: CommonTextField(
            controller: textFieldController,
            hintText: "Название лекарства",
            onChanged: (value) {},
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CommonFilledButton(
            isEnabled: isButtonEnabled,
            text: "Продолжить",
            onTap: () {
              widget.onNextTap?.call();
            },
          ),
        ),
        const SizedBox(height: 81),
      ],
    );
  }
}
