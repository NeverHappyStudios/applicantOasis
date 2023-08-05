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
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              style: TextStyle(color: Colors.white, fontSize: 20),
              'Learn Flutter the fun way!',
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  'Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
