import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.userAnswerColor,
    required this.data,
  });

  final Color userAnswerColor;
  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          data: data,
          userAnswerColor: userAnswerColor,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: <Widget>[
                  Text(
                    data['question'] as String,
                    style: GoogleFonts.content(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black,
                    ),
                  ),
                  Text(
                    data['question'] as String,
                    style: GoogleFonts.content(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 223, 152, 255),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Stack(
                children: <Widget>[
                  Text(
                    'Your answer: ${data['user_answer'] as String}',
                    style: GoogleFonts.content(
                      fontSize: 15,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black,
                    ),
                  ),
                  Text(
                    'Your answer: ${data['user_answer'] as String}',
                    style: GoogleFonts.content(
                      fontSize: 15,
                      color: userAnswerColor,
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Text(
                    'Correct answer: ${data['correct_answer'] as String}',
                    style: GoogleFonts.content(
                      fontSize: 15,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black,
                    ),
                  ),
                  Text(
                    'Correct answer: ${data['correct_answer'] as String}',
                    style: GoogleFonts.content(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        )
      ],
    );
  }
}
