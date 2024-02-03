import 'package:flutter/material.dart';

class CommonFilledButton extends StatelessWidget {
  const CommonFilledButton({
    super.key,
    this.isEnabled,
    this.text,
    this.onTap,
  });

  final bool? isEnabled;
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isEnabled ?? true) {
          onTap?.call();
        }
      },
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isEnabled ?? true
              ? const Color(0xFF02036D)
              : const Color(0xFF02036D).withOpacity(0.45),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text ?? "Button",
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
