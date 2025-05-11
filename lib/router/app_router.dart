import 'package:go_router/go_router.dart';
import 'package:notes_app/splash/splash_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      
    ],
  );
}