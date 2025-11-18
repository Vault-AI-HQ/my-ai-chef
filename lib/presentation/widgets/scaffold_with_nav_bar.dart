import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  final Widget child;
  const ScaffoldWithNavBar({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _calculateSelectedIndex(context),
        onTap: (i) => _onItemTapped(i, context),
        backgroundColor: const Color(0xFF1E1E1E),
        selectedItemColor: const Color(0xFF00FFB8),
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.lightbulb_outline), label: 'Sugestão'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Registar'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Histórico'),
        ],
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    if (location == '/') return 0;
    if (location == '/register') return 1;
    if (location == '/history') return 2;
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0: context.go('/'); break;
      case 1: context.go('/register'); break;
      case 2: context.go('/history'); break;
    }
  }
}
