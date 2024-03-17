import 'package:flutter/material.dart';
import 'package:soundsee/pages/authentication/forgot_password.dart';
import 'package:soundsee/pages/homepage.dart';
import 'package:soundsee/pages/authentication/login_page.dart';
import 'package:soundsee/pages/authentication/auth_page.dart';
import 'package:soundsee/pages/authentication/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterNativeSplash.remove();
  runApp(const SoundSee());
}

class SoundSee extends StatelessWidget {
  const SoundSee({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Ubuntu'),
      // home: const AuthPage(),

      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const AuthPage(),
        '/forgot_password': (_) => const ForgotPasswordScreen(),
        '/signUp': (_) => const Signuppage(),
        '/home_page': (_) => const HomePage(),
        '/loginpage': (_) => const LogInPage(),
      },
    );
  }
}
