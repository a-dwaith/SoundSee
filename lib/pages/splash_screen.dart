import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:soundsee/pages/authentication/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Initiate timer and navigation after 5 seconds
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LogInPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
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
            const SizedBox(height: 10),
            // Center(
            // child: Lottie.network(
            // 'https://lottie.host/b72de766-353c-4b4a-ad22-7a170aaf3601/XLoLUECETg.json'),
            // ),
            Center(
              child: Lottie.network(
                'https://lottie.host/b72de766-353c-4b4a-ad22-7a170aaf3601/XLoLUECETg.json',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
