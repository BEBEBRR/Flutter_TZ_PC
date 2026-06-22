import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const KafStudioApp());
}

class KafStudioApp extends StatelessWidget {
  const KafStudioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KAF Studio — Наши услуги',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppTheme.background,
        fontFamily: AppTheme.fontFamily,
      ),
      home: const HomeScreen(),
    );
  }
}
