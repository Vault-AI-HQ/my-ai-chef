import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'widgets/scaffold_with_nav_bar.dart';
import 'screens/suggestion_screen.dart';
import 'screens/register_screen.dart';
import 'screens/history_screen.dart';

class MyAIChefApp extends StatelessWidget {
  const MyAIChefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My AI Chef',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF8B1E1E),
          secondary: Color(0xFF00FFB8),
          surface: Color(0xFF121212),
        ),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => ScaffoldWithNavBar(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SuggestionScreen(),
        ),
        GoRoute(
          path: '/register',
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          path: '/history',
          builder: (context, state) => const HistoryScreen(),
        ),
      ],
    ),
  ],
);
