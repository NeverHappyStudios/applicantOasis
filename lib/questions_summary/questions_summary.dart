import 'package:adv_basics/questions_summary/summary_item.dart';
import 'package:flutter/material.dart';

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
                return SummaryItem(
                  userAnswerColor: userAnswerColor,
                  data: data,
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
