import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // ← este ficheiro agora tem o conteúdo certo

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Esta é a linha correta para Flutter 3.24+ e flutterfire_cli novo
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyAIChefApp());
}

class MyAIChefApp extends StatelessWidget {
  const MyAIChefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My AI Chef',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Orbitron',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w900,
            color: Colors.pinkAccent,
            shadows: [
              Shadow(
                blurRadius: 30,
                color: Colors.pinkAccent,
                offset: Offset(0, 0),
              ),
            ],
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('MY AI CHEF', style: TextStyle(fontSize: 60, color: Colors.pinkAccent, shadows: [
              Shadow(blurRadius: 40, color: Colors.pinkAccent)
            ])),
            SizedBox(height: 50),
            CircularProgressIndicator(color: Colors.pinkAccent, strokeWidth: 8),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'ABRIU CHEFE!!!',
          style: TextStyle(fontSize: 80, color: Colors.pinkAccent, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
