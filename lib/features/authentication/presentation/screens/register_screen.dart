import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goodoc/features/authentication/presentation/screens/verification_screen.dart';
import 'package:goodoc/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const String route = "register";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -60,
            left: -20,
            child: Image.asset(
              Assets.images.elipse.path,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 20, right: 42),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Регистрация',
                    style: GoogleFonts.openSans(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(left: 11, right: 5),
                    width: 357,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: const Color(0xffF1F4FF),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      style: GoogleFonts.poppins(),
                      decoration: InputDecoration(
                        hintText: 'Введите номер телефона',
                        hintStyle: GoogleFonts.poppins(
                          color: const Color(0xff626262),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(31, 65, 187, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.only(left: 11, right: 5),
                    width: 357,
                    decoration: BoxDecoration(
                      color: const Color(0xffF1F4FF),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      style: GoogleFonts.poppins(),
                      decoration: InputDecoration(
                        hintText: 'Введите пароль',
                        hintStyle: GoogleFonts.poppins(
                          color: const Color(0xff626262),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(31, 65, 187, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.only(left: 11, right: 5),
                    width: 357,
                    decoration: BoxDecoration(
                      color: const Color(0xffF1F4FF),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      style: GoogleFonts.poppins(),
                      decoration: InputDecoration(
                        suffixIconConstraints: const BoxConstraints(
                          maxHeight: 15,
                          maxWidth: 22 + 20,
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Image.asset(
                            Assets.images.eye.path,
                            width: 22,
                            height: 15,
                          ),
                        ),
                        hintText: 'Подтвердите пароль',
                        hintStyle: GoogleFonts.poppins(
                          color: const Color(0xff626262),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(31, 65, 187, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 11, right: 5),
                    child: GestureDetector(
                      onTap: () {
                        context.push("/${VerificationScreen.route}");
                      },
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xff02036D),
                        ),
                        child: Center(
                          child: Text(
                            'Продолжить',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
