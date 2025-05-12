import 'package:go_router/go_router.dart';
import 'package:notes_app/presentation/pages/add_note_page.dart';
import 'package:notes_app/presentation/pages/home_page.dart';
import 'package:notes_app/presentation/pages/login_page.dart';
import 'package:notes_app/presentation/pages/register_page.dart';
import 'package:notes_app/presentation/pages/splash_page.dart';


class AppRoutes {
  static final router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(path: '/splash', builder: (context, state) => const SplashPage()),
       GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(path: '/register', builder: (context, state) => const RegisterPage()),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
       GoRoute(path: '/add-note', builder: (context, state) => const AddNotePage()),
    ],
  );
}
