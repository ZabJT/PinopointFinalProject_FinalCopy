import 'package:flutter/material.dart';
import 'resultpage_visayas.dart';

class QuizScoreV1 {
  static int userScore = 0;
}

class VisayasContentPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/boracay.png'),
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
                validateAnswer(answer, 'Boracay', context);
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
      QuizScoreV1.userScore++;
      proceedToNextPage(context, CorrectAnswerPageV1());
    } else {
      proceedToNextPage(context, WrongAnswerPageV1());
    }
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class VisayasContentPage1Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

  VisayasContentPage1Redirect({required this.isCorrectAnswer});

  @override
  _VisayasContentPage1RedirectState createState() => _VisayasContentPage1RedirectState();
}


class _VisayasContentPage1RedirectState extends State<VisayasContentPage1Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPageV1()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => VisayasContentPage1Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPageV1()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => VisayasContentPage1Facts()),
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


class CorrectAnswerPageV1 extends StatefulWidget {
  @override
  _CorrectAnswerPageStateV1 createState() => _CorrectAnswerPageStateV1();
}

class _CorrectAnswerPageStateV1 extends State<CorrectAnswerPageV1> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VisayasContentPage1Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/boracayanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPageV1 extends StatefulWidget {
  @override
  _WrongAnswerPageStateV1 createState() => _WrongAnswerPageStateV1();
}

class _WrongAnswerPageStateV1 extends State<WrongAnswerPageV1> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VisayasContentPage1Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/boracayanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class VisayasContentPage1Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/boracayfacts.png',
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
                  MaterialPageRoute(builder: (context) => VisayasContentPage2()),
                );
              },
            child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 177, 80, 201)),
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

class VisayasContentPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/chocolatehills.png'),
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
                validateAnswer(answer, 'Chocolate Hills', context);
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
      QuizScoreV1.userScore++;
      proceedToNextPage(context, CorrectAnswerPageV2());
    } else {
      proceedToNextPage(context, WrongAnswerPageV2());
    }
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class VisayasContentPage2Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

  VisayasContentPage2Redirect({required this.isCorrectAnswer});

  @override
  _VisayasContentPage2RedirectState createState() => _VisayasContentPage2RedirectState();
}


class _VisayasContentPage2RedirectState extends State<VisayasContentPage2Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPageV2()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => VisayasContentPage2Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPageV2()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => VisayasContentPage2Facts()),
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


class CorrectAnswerPageV2 extends StatefulWidget {
  @override
  _CorrectAnswerPageStateV2 createState() => _CorrectAnswerPageStateV2();
}

class _CorrectAnswerPageStateV2 extends State<CorrectAnswerPageV2> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VisayasContentPage2Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/chocolatehillsanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPageV2 extends StatefulWidget {
  @override
  _WrongAnswerPageStateV2 createState() => _WrongAnswerPageStateV2();
}

class _WrongAnswerPageStateV2 extends State<WrongAnswerPageV2> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VisayasContentPage2Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/chocolatehillsanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class VisayasContentPage2Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/chocolatehillsfacts.png',
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
                  MaterialPageRoute(builder: (context) => VisayasContentPage3()),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 177, 80, 201)),
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

class VisayasContentPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/kawasanfalls.png'),
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
                validateAnswer(answer, 'Kawasan Falls', context);
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
      QuizScoreV1.userScore++;
      proceedToNextPage(context, CorrectAnswerPageV3());
    } else {
      proceedToNextPage(context, WrongAnswerPageV3());
    }
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class VisayasContentPage3Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

  VisayasContentPage3Redirect({required this.isCorrectAnswer});

  @override
  _VisayasContentPage3RedirectState createState() => _VisayasContentPage3RedirectState();
}


class _VisayasContentPage3RedirectState extends State<VisayasContentPage3Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPageV3()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => VisayasContentPage3Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPageV3()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => VisayasContentPage3Facts()),
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


class CorrectAnswerPageV3 extends StatefulWidget {
  @override
  _CorrectAnswerPageStateV3 createState() => _CorrectAnswerPageStateV3();
}

class _CorrectAnswerPageStateV3 extends State<CorrectAnswerPageV3> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VisayasContentPage3Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/kawasanfallsanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPageV3 extends StatefulWidget {
  @override
  _WrongAnswerPageStateV3 createState() => _WrongAnswerPageStateV3();
}

class _WrongAnswerPageStateV3 extends State<WrongAnswerPageV3> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VisayasContentPage3Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/kawasanfallsanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class VisayasContentPage3Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/kawasanfallsfacts.png',
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
                  MaterialPageRoute(builder: (context) => VisayasContentPage4()),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 177, 80, 201)),
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

class VisayasContentPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/magellanscross.png'),
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
                validateAnswer(answer, 'Magellan\'s Cross', context);
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
      QuizScoreV1.userScore++;
      proceedToNextPage(context, CorrectAnswerPageV4());
    } else {
      proceedToNextPage(context, WrongAnswerPageV4());
    }
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class VisayasContentPage4Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

  VisayasContentPage4Redirect({required this.isCorrectAnswer});

  @override
  _VisayasContentPage4RedirectState createState() => _VisayasContentPage4RedirectState();
}


class _VisayasContentPage4RedirectState extends State<VisayasContentPage4Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPageV4()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => VisayasContentPage4Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPageV4()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => VisayasContentPage4Facts()),
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


class CorrectAnswerPageV4 extends StatefulWidget {
  @override
  _CorrectAnswerPageStateV4 createState() => _CorrectAnswerPageStateV4();
}

class _CorrectAnswerPageStateV4 extends State<CorrectAnswerPageV4> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VisayasContentPage4Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/magellanscrossanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPageV4 extends StatefulWidget {
  @override
  _WrongAnswerPageStateV4 createState() => _WrongAnswerPageStateV4();
}

class _WrongAnswerPageStateV4 extends State<WrongAnswerPageV4> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VisayasContentPage4Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/magellanscrossanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class VisayasContentPage4Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/magellanscrossfacts.png',
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
                  MaterialPageRoute(builder: (context) => VisayasContentPage5()),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 177, 80, 201)),
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

class VisayasContentPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/sambawanisland.png'),
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
                validateAnswer(answer, 'Sambawan Island', context);
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
      QuizScoreV1.userScore++;
      proceedToNextPage(context, CorrectAnswerPageV5());
    } else {
      proceedToNextPage(context, WrongAnswerPageV5());
    }
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class VisayasContentPage5Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

  VisayasContentPage5Redirect({required this.isCorrectAnswer});

  @override
  _VisayasContentPage5RedirectState createState() => _VisayasContentPage5RedirectState();
}


class _VisayasContentPage5RedirectState extends State<VisayasContentPage5Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPageV5()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => VisayasContentPage5Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPageV5()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => VisayasContentPage5Facts()),
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


class CorrectAnswerPageV5 extends StatefulWidget {
  @override
  _CorrectAnswerPageStateV5 createState() => _CorrectAnswerPageStateV5();
}

class _CorrectAnswerPageStateV5 extends State<CorrectAnswerPageV5> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VisayasContentPage5Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sambawanislandanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPageV5 extends StatefulWidget {
  @override
  _WrongAnswerPageStateV5 createState() => _WrongAnswerPageStateV5();
}

class _WrongAnswerPageStateV5 extends State<WrongAnswerPageV5> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VisayasContentPage5Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sambawanislandanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class VisayasContentPage5Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/sambawanislandfacts.png',
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
                  MaterialPageRoute(builder: (context) => ResultsPage2(userScore: QuizScoreV1.userScore)),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 177, 80, 201)),
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

