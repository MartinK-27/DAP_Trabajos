import 'package:go_router/go_router.dart';
import 'package:login_screen_v5/presentation/screens/add_card.dart';
import 'package:login_screen_v5/presentation/screens/home_screen.dart';
import 'package:login_screen_v5/presentation/screens/login_screen.dart';
import 'package:login_screen_v5/presentation/screens/card_detail.dart';
import 'package:login_screen_v5/presentation/screens/edit_card.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    
    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),

    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
  
    GoRoute(path: '/CardDetail', builder: (context, state) => CardDetail()),

    GoRoute(path: '/AddCard', builder: (context, state) => AddCard()),

    GoRoute(path: '/EditCard', builder: (context, state) => EditCard()),
    
  ], );