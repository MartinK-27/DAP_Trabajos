import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:go_router/go_router.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter = GoRouter(
      //initialLocation: '/login';
      routes: 
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen(),))
    return Container();
  }
}