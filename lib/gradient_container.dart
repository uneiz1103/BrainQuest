import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startQuiz, {super.key});
  final Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
            color: const Color.fromARGB(70, 255, 255, 255),
            //ARGB stands for Alpha , Red , Green , Blue
          ),
          const SizedBox(height: 30),
          Text(
            'Learn Flutter the Fun way!',
            style: GoogleFonts.playfairDisplay(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
