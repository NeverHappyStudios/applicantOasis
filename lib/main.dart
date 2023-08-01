import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 0, 170),
        body: Container(
          child: Center(
            child: Column(
              /* crossAxisAlignment: CrossAxisAlignment.center, */
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 200,
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
                TextButton(
                  onPressed: () {
                    1 + 1;
                  },
                  child: const Text(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      'Start Quiz'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
