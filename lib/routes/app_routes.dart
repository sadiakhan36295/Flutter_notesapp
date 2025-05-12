import 'package:go_router/go_router.dart';
import 'package:notes_app/presentation/pages/home_page.dart';
import 'package:notes_app/presentation/pages/splash_page.dart';


class AppRoutes {
  static final router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(path: '/splash', builder: (context, state) => const SplashPage()),
      
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
 
    ],
  );
}
