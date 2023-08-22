import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            onTap();
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 40,
            ),
            backgroundColor: const Color.fromARGB(255, 4, 2, 100),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(23),
            ),
          ),
          child: Text(
            textAlign: TextAlign.center,
            answerText,
          ),
        ),
      ],
    );
  }
}
