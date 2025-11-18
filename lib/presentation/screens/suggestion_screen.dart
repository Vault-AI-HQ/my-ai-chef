import 'package:flutter/material.dart';

class SuggestionScreen extends StatelessWidget {
  const SuggestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Sugestão a caminho 🍽️🔥',
        style: TextStyle(fontSize: 28, color: Color(0xFF00FFB8)),
      ),
    );
  }
}
