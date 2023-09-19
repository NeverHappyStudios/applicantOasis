import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(140, 255, 255, 255),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
              height: 30,
              child: Stack(
                children: <Widget>[
                  Text(
                    style: GoogleFonts.raleway(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black,
                    ),
                    'Let\'s Fuck Shit Up.',
                  ),
                  Text(
                    style: GoogleFonts.raleway(
                      color: const Color.fromARGB(255, 250, 96, 186),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    'Let\'s Fuck Shit Up.',
                  ),
                ],
              )),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_right_alt_outlined,
            ),
            label: Stack(
              children: [
                Text(
                    style: TextStyle(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black,
                    ),
                    'Press the button'),
                const Text(
                    // style: TextSty5le(
                    //   color: Colors.white,
                    // ),
                    'Press the button'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
