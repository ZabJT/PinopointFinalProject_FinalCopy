import 'package:flutter/material.dart';
import 'package:pinopoint_final/visayas_contentpage.dart';
import 'homepage.dart';

class ResultsPage2 extends StatelessWidget {
  final int userScore;

  ResultsPage2({required this.userScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/visayasscore.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 417,
            left: 235, 
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
                
                QuizScoreV1.userScore = 0;
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
                    MaterialStateProperty.all<Color>(Color.fromARGB(255, 177, 80, 201)),
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
