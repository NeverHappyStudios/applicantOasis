import 'package:adv_basics/outlined_text.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(
      () {
        if (currentQuestionIndex == 5) {
          currentQuestionIndex = 0;
        } else
          currentQuestionIndex++;
      },
    );
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  Text(
                    currentQuestion.text,
                    style: GoogleFonts.raleway(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  OutlinedText(
                    'test',
                    // currentQuestion.text,
                    style: GoogleFonts.raleway(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 250, 96, 186),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: answerQuestion,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
