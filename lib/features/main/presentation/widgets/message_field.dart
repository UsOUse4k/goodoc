import 'package:flutter/material.dart';
import 'package:goodoc/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageField extends StatelessWidget {
  const MessageField({
    super.key,
    this.onChanged,
    this.onSend,
  });

  final ValueChanged<String>? onChanged;
  final VoidCallback? onSend;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.only(left: 14),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 52),
            child: TextField(
              cursorColor: Colors.white,
              cursorHeight: 28,
              cursorWidth: 1,
              onChanged: (value) {
                onChanged?.call(value);
              },
              decoration: InputDecoration(
                isDense: false,
                border: InputBorder.none,
                hintText: "Введите запрос",
                hintStyle: GoogleFonts.workSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF787878),
                ),
              ),
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            right: 8,
            child: GestureDetector(
              onTap: () {
                onSend?.call();
              },
              child: Container(
                width: 36,
                height: 36,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF6C63FF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.asset(
                  Assets.images.send.path,
                  width: 16.67,
                  height: 16.67,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
