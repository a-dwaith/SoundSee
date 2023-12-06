import 'package:flutter/material.dart';
import 'pages/intro_screens/onboardingscreen.dart';

void main() {
  runApp(const SoundSee());
}

class SoundSee extends StatelessWidget {
  const SoundSee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Ubuntu'),
      home: const OnboardingScreen(),
    );
  }
}
