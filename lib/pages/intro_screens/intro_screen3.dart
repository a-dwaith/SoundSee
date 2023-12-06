import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          'Page 3',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        // child: Lottie.network(
        // 'https://lottie.host/e7593e48-b4ca-4c7b-a61c-20092505a897/BJ5bGFQ6w0.json'),
      ),
    );
  }
}
