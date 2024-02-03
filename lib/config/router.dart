import 'package:go_router/go_router.dart';
import 'package:goodoc/features/authentication/presentation/screens/log_in_screen.dart';
import 'package:goodoc/features/authentication/presentation/screens/register_screen.dart';
import 'package:goodoc/features/authentication/presentation/screens/verification_screen.dart';
import 'package:goodoc/features/between/presentation/screens/between_screen.dart';
import 'package:goodoc/features/main/presentation/screens/main_screen.dart';
import 'package:goodoc/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:goodoc/features/on_boarding/presentation/screens/splash_screen.dart';

class AppNavigation {
  AppNavigation._();

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: "/",
        redirect: (context, state) => "/${SplashScreen.route}",
      ),
      GoRoute(
        path: "/${SplashScreen.route}",
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: "/${OnBoardingScreen.route}",
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: "/${LogInScreen.route}",
        builder: (context, state) => const LogInScreen(),
      ),
      GoRoute(
        path: "/${RegisterScreen.route}",
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: "/${VerificationScreen.route}",
        builder: (context, state) => const VerificationScreen(),
      ),
      GoRoute(
        path: "/${BetweenScreen.route}",
        builder: (context, state) => const BetweenScreen(),
      ),
      GoRoute(
        path: "/${MainScreen.route}",
        builder: (context, state) => const MainScreen(),
      ),
    ],
  );
}
