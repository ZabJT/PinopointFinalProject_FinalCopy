import 'package:flutter/material.dart';

class ResultsPage3 extends StatelessWidget {
  
  final int userScore;

  ResultsPage3({required this.userScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/mindanaoscore.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 422, // Adjust the top position as needed
            left: 235, // Adjust the left position as needed
            child: Text(
              '$userScore',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
