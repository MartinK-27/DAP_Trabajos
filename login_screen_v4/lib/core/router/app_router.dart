import 'package:go_router/go_router.dart';
import 'package:login_screen_v3/presentation/screens/home_screen.dart';
import 'package:login_screen_v3/presentation/screens/login_screen.dart';
import 'package:login_screen_v3/entieties/users.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', builder: (context, state) => HomeScreen(persona: state.extra as Users)),


    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),

  ]);