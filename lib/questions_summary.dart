import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: summaryData.map((data) {
                Color userAnswerColor;

                if (data['user_answer'] == data['correct_answer']) {
                  userAnswerColor = Colors.green;
                } else {
                  userAnswerColor = Colors.red;
                }
                return Row(
                  children: [
                    Stack(
                      children: [
                        Icon(Icons.circle, size: 40, color: userAnswerColor),
                        Center(
                          heightFactor: 1.8,
                          widthFactor: 5.5,
                          child: Stack(
                            children: <Widget>[
                              Text(
                                ((data['question_index'] as int) + 1)
                                    .toString(),
                                style: GoogleFonts.content(
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 3
                                    ..color = Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                ((data['question_index'] as int) + 1)
                                    .toString(),
                                style: GoogleFonts.content(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
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
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                data['question'] as String,
                                style: GoogleFonts.content(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      const Color.fromARGB(255, 223, 152, 255),
                                ),
                                textAlign: TextAlign.left,
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
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Your answer: ${data['user_answer'] as String}',
                                style: GoogleFonts.content(
                                  fontSize: 15,
                                  color: userAnswerColor,
                                ),
                                textAlign: TextAlign.left,
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
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Correct answer: ${data['correct_answer'] as String}',
                                style: GoogleFonts.content(
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                                textAlign: TextAlign.left,
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
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
