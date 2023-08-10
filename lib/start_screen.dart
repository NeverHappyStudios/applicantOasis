import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Color.fromARGB(140, 255, 255, 255),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              style: TextStyle(color: Colors.white, fontSize: 20),
              'Don\'t Fuck This Up.',
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(
                Icons.arrow_right_alt_outlined,
              ),
              label: const Text(
                  // style: TextStyle(
                  //   color: Colors.white,
                  // ),
                  'Press a button'),
            ),
          ],
        ),
      ),
    );
  }
}
