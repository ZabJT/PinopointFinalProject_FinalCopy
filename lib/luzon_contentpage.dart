import 'package:flutter/material.dart';
import 'resultpage_luzon.dart';

class LuzonContentPage1 extends StatelessWidget {
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
                  image: AssetImage('assets/rizalpark.png'),
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
                validateAnswer(answer, 'Rizal Park', context);
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
      LuzonContentPage1.userScore++;
    }

    proceedToNextPage(context, LuzonContentPage2());
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class LuzonContentPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/skyranchtagaytay.png'),
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
                validateAnswer(answer, 'SkyRanch Tagaytay', context);
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
      LuzonContentPage1.userScore++;
    }

    proceedToNextPage(context, LuzonContentPage3());
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class LuzonContentPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/moa.png'),
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
                validateAnswer(answer, 'Mall of Asia', context);
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
      LuzonContentPage1.userScore++;
    }

    proceedToNextPage(context, LuzonContentPage4());
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class LuzonContentPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/fortsantiago.png'),
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
                validateAnswer(answer, 'Fort Santiago', context);
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
      LuzonContentPage1.userScore++;
    }

    proceedToNextPage(context, LuzonContentPage5());
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class LuzonContentPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mayonvolcano.png'),
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
                validateAnswer(answer, 'Mayon Volcano', context);
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
      LuzonContentPage1.userScore++;
    }

    proceedToNextPage(context);
  }

  void proceedToNextPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ResultsPage(userScore: LuzonContentPage1.userScore)),
    );
  }
}
