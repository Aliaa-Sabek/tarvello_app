import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const TravelloApp());
}

class TravelloApp extends StatelessWidget {
  const TravelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travello',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
    );
  }
}
