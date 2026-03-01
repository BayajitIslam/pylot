import 'package:flutter/material.dart';
import 'package:pylot/core/theme/app_theme.dart';
import 'package:pylot/features/onboarding/presentation/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pylot',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(),
    );
  }
}
