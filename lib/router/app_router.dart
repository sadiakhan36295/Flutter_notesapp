import 'package:go_router/go_router.dart';
import 'package:notes_app/screens/login_page.dart';
import 'package:notes_app/screens/registration_page.dart';
import 'package:notes_app/splash/splash_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(path: '/register', builder: (context, state) => const RegistrationPage()),
    ],
  );
}