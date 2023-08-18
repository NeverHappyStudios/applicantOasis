import 'package:flutter/material.dart';

import 'package:adv_basics/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
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
            const Text(
              'Question',
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        AnswerButton(
          answerText: 'Answer Text...',
          onTap: () {},
        ),
        AnswerButton(
          answerText: 'Answer Text...',
          onTap: () {},
        ),
        AnswerButton(
          answerText: 'Answer Text...',
          onTap: () {},
        ),
        AnswerButton(
          answerText: 'Answer Text...',
          onTap: () {},
        ),
      ],
    );
  }
}
