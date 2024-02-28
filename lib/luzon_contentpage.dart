import 'package:flutter/material.dart';
import 'resultpage_luzon.dart';

class QuizScore {
  static int userScore = 0;
}

class LuzonContentPage1 extends StatelessWidget {
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
    bool isCorrect = answer.toLowerCase() == correctAnswer.toLowerCase();

    if (isCorrect) {
      QuizScore.userScore++;
      proceedToNextPage(context, CorrectAnswerPage());
    } else {
      proceedToNextPage(context, WrongAnswerPage());
    }
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class LuzonContentPage1Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

  LuzonContentPage1Redirect({required this.isCorrectAnswer});

  @override
  _LuzonContentPage1RedirectState createState() => _LuzonContentPage1RedirectState();
}


class _LuzonContentPage1RedirectState extends State<LuzonContentPage1Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPage()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LuzonContentPage1Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPage()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LuzonContentPage1Facts()),
            );
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Remove the Container with DecorationImage
    return Scaffold(
      body: Container(),
    );
  }
}


class CorrectAnswerPage extends StatefulWidget {
  @override
  _CorrectAnswerPageState createState() => _CorrectAnswerPageState();
}

class _CorrectAnswerPageState extends State<CorrectAnswerPage> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LuzonContentPage1Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/rizalparkanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPage extends StatefulWidget {
  @override
  _WrongAnswerPageState createState() => _WrongAnswerPageState();
}

class _WrongAnswerPageState extends State<WrongAnswerPage> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LuzonContentPage1Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/rizalparkanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class LuzonContentPage1Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/rizalparkfacts.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            bottom: 16.0, // adjust the bottom position as needed
            left: 16.0, // adjust the left position as needed
            right: 16.0, // adjust the right position as needed
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LuzonContentPage2()),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 242, 141, 59)),
                fixedSize: MaterialStateProperty.all<Size>(
        Size(10.0, 10.0), // Adjust width and height as needed
      ),
    ),
  ),
),
        ],
      ),
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
  bool isCorrect = answer.toLowerCase() == correctAnswer.toLowerCase();

  if (isCorrect) {
    QuizScore.userScore++;
    proceedToNextPage(context, CorrectAnswerPage2());
  } else {
    proceedToNextPage(context, WrongAnswerPage2());
  }
}

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class LuzonContentPage2Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

  LuzonContentPage2Redirect({required this.isCorrectAnswer});

  @override
  _LuzonContentPage2RedirectState createState() => _LuzonContentPage2RedirectState();
}

class _LuzonContentPage2RedirectState extends State<LuzonContentPage2Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPage2()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LuzonContentPage2Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPage2()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LuzonContentPage2Facts()),
            );
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Remove the Container with DecorationImage
    return Scaffold(
      body: Container(),
    );
  }
}


class CorrectAnswerPage2 extends StatefulWidget {
  @override
  _CorrectAnswerPageState2 createState() => _CorrectAnswerPageState2();
}

class _CorrectAnswerPageState2 extends State<CorrectAnswerPage2> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LuzonContentPage2Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/skyranchtagaytayanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPage2 extends StatefulWidget {
  @override
  _WrongAnswerPageState2 createState() => _WrongAnswerPageState2();
}

class _WrongAnswerPageState2 extends State<WrongAnswerPage2> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LuzonContentPage2Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/skyranchtagaytayanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class LuzonContentPage2Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/skyranchtagaytayfacts.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            bottom: 16.0, // adjust the bottom position as needed
            left: 16.0, // adjust the left position as needed
            right: 16.0, // adjust the right position as needed
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LuzonContentPage3()),
                );
              },
               child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 242, 141, 59)),
                fixedSize: MaterialStateProperty.all<Size>(
        Size(10.0, 10.0), // Adjust width and height as needed
      ),
    ),
  ),
),
        ],
      ),
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
  bool isCorrect = answer.toLowerCase() == correctAnswer.toLowerCase();

  if (isCorrect) {
    QuizScore.userScore++;
    proceedToNextPage(context, CorrectAnswerPage3());
  } else {
    proceedToNextPage(context, WrongAnswerPage3());
  }
}

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class LuzonContentPage3Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

  LuzonContentPage3Redirect({required this.isCorrectAnswer});

  @override
  _LuzonContentPage3RedirectState createState() => _LuzonContentPage3RedirectState();
}

class _LuzonContentPage3RedirectState extends State<LuzonContentPage3Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPage3()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LuzonContentPage3Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPage3()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LuzonContentPage3Facts()),
            );
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Remove the Container with DecorationImage
    return Scaffold(
      body: Container(),
    );
  }
}


class CorrectAnswerPage3 extends StatefulWidget {
  @override
  _CorrectAnswerPageState3 createState() => _CorrectAnswerPageState3();
}

class _CorrectAnswerPageState3 extends State<CorrectAnswerPage3> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LuzonContentPage3Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/moaanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPage3 extends StatefulWidget {
  @override
  _WrongAnswerPageState3 createState() => _WrongAnswerPageState3();
}

class _WrongAnswerPageState3 extends State<WrongAnswerPage3> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LuzonContentPage3Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/moaanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class LuzonContentPage3Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/moafacts.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            bottom: 16.0, // adjust the bottom position as needed
            left: 16.0, // adjust the left position as needed
            right: 16.0, // adjust the right position as needed
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LuzonContentPage4()),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 242, 141, 59)),
                fixedSize: MaterialStateProperty.all<Size>(
        Size(10.0, 10.0), // Adjust width and height as needed
      ),
    ),
  ),
),
        ],
      ),
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
  bool isCorrect = answer.toLowerCase() == correctAnswer.toLowerCase();

  if (isCorrect) {
    QuizScore.userScore++;
    proceedToNextPage(context, CorrectAnswerPage4());
  } else {
    proceedToNextPage(context, WrongAnswerPage4());
  }
}

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class LuzonContentPage4Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

  LuzonContentPage4Redirect({required this.isCorrectAnswer});

  @override
  _LuzonContentPage4RedirectState createState() => _LuzonContentPage4RedirectState();
}

class _LuzonContentPage4RedirectState extends State<LuzonContentPage4Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPage4()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LuzonContentPage4Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPage4()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LuzonContentPage4Facts()),
            );
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Remove the Container with DecorationImage
    return Scaffold(
      body: Container(),
    );
  }
}


class CorrectAnswerPage4 extends StatefulWidget {
  @override
  _CorrectAnswerPageState4 createState() => _CorrectAnswerPageState4();
}

class _CorrectAnswerPageState4 extends State<CorrectAnswerPage4> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LuzonContentPage4Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fortsantiagoanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPage4 extends StatefulWidget {
  @override
  _WrongAnswerPageState4 createState() => _WrongAnswerPageState4();
}

class _WrongAnswerPageState4 extends State<WrongAnswerPage4> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LuzonContentPage4Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fortsantiagoanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class LuzonContentPage4Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/fortsantiagofacts.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            bottom: 16.0, // adjust the bottom position as needed
            left: 16.0, // adjust the left position as needed
            right: 16.0, // adjust the right position as needed
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LuzonContentPage5()),
                );
              },
               child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 242, 141, 59)),
                fixedSize: MaterialStateProperty.all<Size>(
        Size(10.0, 10.0), // Adjust width and height as needed
      ),
    ),
  ),
),
        ],
      ),
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
  bool isCorrect = answer.toLowerCase() == correctAnswer.toLowerCase();

  if (isCorrect) {
    QuizScore.userScore++;
    proceedToNextPage(context, CorrectAnswerPage5());
  } else {
    proceedToNextPage(context, WrongAnswerPage5());
  }
}

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class LuzonContentPage5Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

  LuzonContentPage5Redirect({required this.isCorrectAnswer});

  @override
  _LuzonContentPage5RedirectState createState() => _LuzonContentPage5RedirectState();
}

class _LuzonContentPage5RedirectState extends State<LuzonContentPage5Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPage5()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LuzonContentPage5Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPage5()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LuzonContentPage5Facts()),
            );
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Remove the Container with DecorationImage
    return Scaffold(
      body: Container(),
    );
  }
}


class CorrectAnswerPage5 extends StatefulWidget {
  @override
  _CorrectAnswerPageState5 createState() => _CorrectAnswerPageState5();
}

class _CorrectAnswerPageState5 extends State<CorrectAnswerPage5> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LuzonContentPage5Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mayonvolcanoanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPage5 extends StatefulWidget {
  @override
  _WrongAnswerPageState5 createState() => _WrongAnswerPageState5();
}

class _WrongAnswerPageState5 extends State<WrongAnswerPage5> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LuzonContentPage5Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mayonvolcanoanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class LuzonContentPage5Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/mayonvolcanofacts.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            bottom: 16.0, // adjust the bottom position as needed
            left: 16.0, // adjust the left position as needed
            right: 16.0, // adjust the right position as needed
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ResultsPage(userScore: QuizScore.userScore)),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 242, 141, 59)),
                fixedSize: MaterialStateProperty.all<Size>(
        Size(10.0, 10.0), // Adjust width and height as needed
      ),
    ),
  ),
),
        ],
      ),
    );
  }
}
