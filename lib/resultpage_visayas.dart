import 'package:flutter/material.dart';

class ResultsPage2 extends StatelessWidget {
  final int userScore;

  ResultsPage2({required this.userScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Results Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Your Score: $userScore',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
