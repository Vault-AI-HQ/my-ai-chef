import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // ← este ficheiro existe, foi gerado pelo Firebase

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform.instance,
  );
  runApp(const MyAIChefApp());
}

// ... resto do código que te mandei antes (SplashScreen, HomePage, tema neon, etc.)
