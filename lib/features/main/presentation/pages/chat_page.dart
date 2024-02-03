import 'package:flutter/material.dart';
import 'package:goodoc/features/main/presentation/widgets/message_field.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 36.5),
        const Text(
          "Чат",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(flex: 2),
        Text(
          "Спросите совет у бота",
          style: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black.withOpacity(0.4),
          ),
        ),
        const Spacer(flex: 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MessageField(
            onChanged: (value) {},
            onSend: () {},
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
