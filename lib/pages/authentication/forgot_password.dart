import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          'Forgot password',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        // child: Lottie.network(
        // 'https://lottie.host/a8223878-0c17-4aa8-8516-f52139fe291e/EZls1Xt47M.json'),
      ),
    );
  }
}
