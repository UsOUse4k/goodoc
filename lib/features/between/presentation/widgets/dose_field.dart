import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoseField extends StatelessWidget {
  const DoseField({
    super.key,
    this.onChanged,
  });

  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F4FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "примите ",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF626262),
              ),
            ),
            TextSpan(
              text: "1 Таблетка(-и\\-ок)",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF626262),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
