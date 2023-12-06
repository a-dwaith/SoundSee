import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          'Page 2',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        // child: Lottie.network(
        // 'https://lottie.host/a8223878-0c17-4aa8-8516-f52139fe291e/EZls1Xt47M.json'),
      ),
    );
  }
}
