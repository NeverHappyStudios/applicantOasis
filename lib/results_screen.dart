import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './data/questions.dart';
import 'questions_summary/questions_summary.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestartQuiz,
  });

  final List<String> chosenAnswers;

  final void Function() onRestartQuiz;

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < widget.chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': widget.chosenAnswers[i]
        },
      );
    }
    return summary;
  }

  void restartQuiz() {
    widget.onRestartQuiz();
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where(
      (data) {
        return data['user_answer'] == data['correct_answer'];
      },
    ).length;
    final numWrong = numTotalQuestions - numCorrectQuestions;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Stack(
                children: <Widget>[
                  Text(
                    'You suck. $numCorrectQuestions correct. $numWrong incorrect. $numTotalQuestions total. Do better.',
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
                  Text(
                    'You suck. $numCorrectQuestions correct. $numWrong incorrect. $numTotalQuestions total. Do better.',
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
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.restart_alt,
              ),
              label: const Text('Restart Quiz'),
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(OvalBorder()),
                backgroundColor: MaterialStatePropertyAll(Colors.purple),
              ),
              onPressed: () {
                restartQuiz();
              },
            ),
          ],
        ),
      ),
    );
  }
}
