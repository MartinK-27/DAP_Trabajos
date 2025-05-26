import 'package:go_router/go_router.dart';
import 'package:login_screen_v3/presentation/screens/home_screen.dart';
import 'package:login_screen_v3/presentation/screens/login_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/home', builder: (context, state) {
      final textoingresado1 = state.extra.toString();
      return HomeScreen(textoingresado1: textoingresado1);

    }),
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),

  ]);