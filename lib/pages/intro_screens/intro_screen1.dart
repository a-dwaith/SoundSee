import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'SoundSee',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Center(
              child: Lottie.network(
                  'https://lottie.host/b72de766-353c-4b4a-ad22-7a170aaf3601/XLoLUECETg.json'),
            ),
          ],
        ),
      ),
    );
  }
}
