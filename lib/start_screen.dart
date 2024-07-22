import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/flutter-quiz-logo.png',
          color: Color.fromARGB(142, 255, 255, 255),
          width: 200,
        ),
        const SizedBox(height: 80),
        Text(
          "Learn Flutter the FUN WAY",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"))

        // OutlinedButton(
        //   onPressed: () {},
        //   style: OutlinedButton.styleFrom(foregroundColor: Colors.white),

        //   child: const Text("Start Quiz"),
        // ),
      ],
    ));
  }
}
