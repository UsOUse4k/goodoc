import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonOutlinedButton extends StatelessWidget {
  const CommonOutlinedButton({
    super.key,
    this.text,
    this.onTap,
  });

  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        height: 64,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text ?? "Button",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
