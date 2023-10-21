import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.data,
    required this.userAnswerColor,
  });

  final Map<String, Object> data;
  final Color userAnswerColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: userAnswerColor,
          borderRadius: BorderRadius.circular(100),
        ),
        // ),
        // Icon(Icons.circle, size: 40, color: userAnswerColor),
        // Center(
        //   heightFactor: 1.4,
        //   widthFactor: 5.5,
        child: Stack(
          children: <Widget>[
            Text(
              ((data['question_index'] as int) + 1).toString(),
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
              ((data['question_index'] as int) + 1).toString(),
              style: GoogleFonts.content(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
