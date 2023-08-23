import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  void Function() onTap;
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 22,
            horizontal: 40,
          ),
          backgroundColor: const Color.fromARGB(255, 55, 195, 217),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
