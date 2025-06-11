import 'package:go_router/go_router.dart';
import 'package:login_screen_v5/presentation/screens/add_card.dart';
import 'package:login_screen_v5/presentation/screens/home_screen.dart';
import 'package:login_screen_v5/presentation/screens/login_screen.dart';
import 'package:login_screen_v5/entieties/users.dart';
import 'package:login_screen_v5/presentation/screens/card_detail.dart';
import 'package:login_screen_v5/entieties/balatro_cards.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    
    GoRoute(path: '/home', builder: (context, state) {
      final extra = state.extra;
  if (extra is! Users) {
    return LoginScreen(); 
  }
  return HomeScreen(usuarioingresando: extra);

    }),
    
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
  
  GoRoute(path: '/CardDetail', builder: (context, state) {
      final extra = state.extra;
  if (extra is! Balatro) {
    return LoginScreen();
  }
  return CardDetail(card: extra);
    }),
    
    GoRoute(path: '/AddCard', builder: (context, state) => AddCard()),
    
  ], );