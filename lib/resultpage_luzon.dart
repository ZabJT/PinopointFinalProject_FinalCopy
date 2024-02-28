import 'package:flutter/material.dart';
import 'package:pinopoint_final/luzon_contentpage.dart';
import 'homepage.dart';

class ResultsPage extends StatelessWidget {
  final int userScore;

  ResultsPage({required this.userScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/luzonscore.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 417, // Adjust the top position as needed
            left: 235, // Adjust the left position as needed
            child: Text(
              '$userScore',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
            child: ElevatedButton(
              onPressed: () {
                // Reset the user score and navigate to homepage.dart
                QuizScore.userScore = 0;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text(
                "PLAY AGAIN",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color.fromARGB(255, 242, 141, 59)),
                fixedSize: MaterialStateProperty.all<Size>(
                  Size(10.0, 10.0), 
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
