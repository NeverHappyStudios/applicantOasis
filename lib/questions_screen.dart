import 'package:flutter/material.dart';

import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget>[
              Text(
                'Question',
                style: TextStyle(
                  fontSize: 23,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 3
                    ..color = Colors.black,
                ),
              ),
              Text(
                currentQuestion.text,
                style: const TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        ...currentQuestion.answers.map(
          (answer) {
            return AnswerButton(
              answerText: answer,
              onTap: () {},
            );
          },
        ),
      ],
    );
  }
}
