import 'package:flutter/material.dart';
import 'resultpage_mindanao.dart';

class MindanaoContentPage1 extends StatelessWidget {
  static int userScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mariacristinafalls.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: TextField(
              onSubmitted: (String answer) {
                validateAnswer(answer, 'Maria Cristina Falls', context);
              },
              decoration: InputDecoration(
                hintText: 'Enter text here',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void validateAnswer(String answer, String correctAnswer, BuildContext context) {
    if (answer.toLowerCase() == correctAnswer.toLowerCase()) {
      MindanaoContentPage1.userScore++;
    }

    proceedToNextPage(context, MindanaoContentPage2());
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class MindanaoContentPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mountapo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: TextField(
              onSubmitted: (String answer) {
                validateAnswer(answer, 'Mount Apo', context);
              },
              decoration: InputDecoration(
                hintText: 'Enter text here',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void validateAnswer(String answer, String correctAnswer, BuildContext context) {
    if (answer.toLowerCase() == correctAnswer.toLowerCase()) {
      MindanaoContentPage1.userScore++;
    }

    proceedToNextPage(context, MindanaoContentPage3());
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class MindanaoContentPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pinkmosque.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: TextField(
              onSubmitted: (String answer) {
                validateAnswer(answer, 'Pink Mosque', context);
              },
              decoration: InputDecoration(
                hintText: 'Enter text here',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void validateAnswer(String answer, String correctAnswer, BuildContext context) {
    if (answer.toLowerCase() == correctAnswer.toLowerCase()) {
      MindanaoContentPage1.userScore++;
    }

    proceedToNextPage(context, MindanaoContentPage4());
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class MindanaoContentPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/siargaoisland.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: TextField(
              onSubmitted: (String answer) {
                validateAnswer(answer, 'Siargao Island', context);
              },
              decoration: InputDecoration(
                hintText: 'Enter text here',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void validateAnswer(String answer, String correctAnswer, BuildContext context) {
    if (answer.toLowerCase() == correctAnswer.toLowerCase()) {
      MindanaoContentPage1.userScore++;
    }

    proceedToNextPage(context, MindanaoContentPage5());
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class MindanaoContentPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/tinuyanfalls.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: TextField(
              onSubmitted: (String answer) {
                validateAnswer(answer, 'Tinuy-an Falls', context);
              },
              decoration: InputDecoration(
                hintText: 'Enter text here',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void validateAnswer(String answer, String correctAnswer, BuildContext context) {
    if (answer.toLowerCase() == correctAnswer.toLowerCase()) {
      MindanaoContentPage1.userScore++;
    }

    proceedToNextPage(context);
  }

  void proceedToNextPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ResultsPage3(userScore: MindanaoContentPage1.userScore)),
    );
  }
}
