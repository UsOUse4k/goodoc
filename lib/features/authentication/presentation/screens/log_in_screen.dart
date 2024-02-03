import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goodoc/features/authentication/presentation/screens/register_screen.dart';
import 'package:goodoc/features/main/presentation/screens/main_screen.dart';
import 'package:goodoc/gen/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  static const String route = "log_in";

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
              padding: const EdgeInsets.only(
                left: 24,
                top: 20,
                right: 42,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Вход',
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
                        hintText: 'Номер телефона',
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
                  const SizedBox(height: 15),
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
                        hintText: 'Пароль',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Забыли пароль ?',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff1F41BB),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 19),
                  Padding(
                    padding: const EdgeInsets.only(left: 19, right: 2),
                    child: GestureDetector(
                      onTap: () {
                        context.go("/${MainScreen.route}");
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
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 19, right: 2),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffEDF0F2),
                        ),
                        child: Center(
                          child: Text(
                            'Войти как гость',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 19, right: 2),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffEDF0F2),
                        ),
                        child: Center(
                          child: Text(
                            'Регистрация',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Войти с помощью',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff1F41BB),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color(0xffECECEC),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                            Assets.images.google.path,
                            height: 18.75,
                            width: 18.75,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 60,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color(0xffECECEC),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                            Assets.images.facebook.path,
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 60,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color(0xffECECEC),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                            Assets.images.apple.path,
                            height: 18,
                            width: 15.17,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 61),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Нет аккаунта?',
                          style: GoogleFonts.inter(
                            color: const Color(0xffB1B8BE),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: ' '),
                            TextSpan(
                              text: 'Регистрация',
                              style: GoogleFonts.inter(
                                decorationColor: Colors.black,
                                decoration: TextDecoration.underline,
                                color: const Color(0xffB1B8BE),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  context.push("/${RegisterScreen.route}");
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
