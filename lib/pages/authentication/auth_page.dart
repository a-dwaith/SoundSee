import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:soundsee/pages/homepage.dart';
import 'package:soundsee/pages/authentication/login_page.dart';
// import 'package:soundsee/pages/splash_screen.dart';
// import 'package:soundsee/pages/intro_screens/onboardingscreen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // User logged in
          if (snapshot.hasData) {
            return const HomePage();
          }
          // User not logged in
          else {
            return const LogInPage();
          }
        },
      ),
    );
  }
}
