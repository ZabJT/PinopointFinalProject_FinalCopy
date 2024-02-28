import 'package:flutter/material.dart';
import 'resultpage_mindanao.dart';

class QuizScoreM1 {
  static int userScore = 0;
}

class MindanaoContentPage1 extends StatelessWidget {
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
    bool isCorrect = answer.toLowerCase() == correctAnswer.toLowerCase();

    if (isCorrect) {
      QuizScoreM1.userScore++;
      proceedToNextPage(context, CorrectAnswerPageM1());
    } else {
      proceedToNextPage(context, WrongAnswerPageM1());
    }
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class MindanaoContentPage1Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

 MindanaoContentPage1Redirect({required this.isCorrectAnswer});

  @override
  _MindanaoContentPage1RedirectState createState() => _MindanaoContentPage1RedirectState();
}

class _MindanaoContentPage1RedirectState extends State<MindanaoContentPage1Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPageM1()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MindanaoContentPage1Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPageM1()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MindanaoContentPage1Facts()),
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


class CorrectAnswerPageM1 extends StatefulWidget {
  @override
  _CorrectAnswerPageStateM1 createState() => _CorrectAnswerPageStateM1();
}

class _CorrectAnswerPageStateM1 extends State<CorrectAnswerPageM1> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MindanaoContentPage1Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mariacristinafallsanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPageM1 extends StatefulWidget {
  @override
  _WrongAnswerPageStateM1 createState() => _WrongAnswerPageStateM1();
}

class _WrongAnswerPageStateM1 extends State<WrongAnswerPageM1> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MindanaoContentPage1Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mariacristinafallsanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class MindanaoContentPage1Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/mariacristinafallsfacts.png',
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
                  MaterialPageRoute(builder: (context) => MindanaoContentPage2()),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 250, 226, 50)),
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
    bool isCorrect = answer.toLowerCase() == correctAnswer.toLowerCase();

    if (isCorrect) {
      QuizScoreM1.userScore++;
      proceedToNextPage(context, CorrectAnswerPageM2());
    } else {
      proceedToNextPage(context, WrongAnswerPageM2());
    }
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class MindanaoContentPage2Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

 MindanaoContentPage2Redirect({required this.isCorrectAnswer});

  @override
  _MindanaoContentPage2RedirectState createState() => _MindanaoContentPage2RedirectState();
}

class _MindanaoContentPage2RedirectState extends State<MindanaoContentPage2Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPageM2()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MindanaoContentPage2Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPageM2()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MindanaoContentPage2Facts()),
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


class CorrectAnswerPageM2 extends StatefulWidget {
  @override
  _CorrectAnswerPageStateM2 createState() => _CorrectAnswerPageStateM2();
}

class _CorrectAnswerPageStateM2 extends State<CorrectAnswerPageM2> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MindanaoContentPage2Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mountapoanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPageM2 extends StatefulWidget {
  @override
  _WrongAnswerPageStateM2 createState() => _WrongAnswerPageStateM2();
}

class _WrongAnswerPageStateM2 extends State<WrongAnswerPageM2> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MindanaoContentPage2Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mountapoanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class MindanaoContentPage2Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/mountapofacts.png',
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
                  MaterialPageRoute(builder: (context) => MindanaoContentPage3()),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 250, 226, 50)),
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
    bool isCorrect = answer.toLowerCase() == correctAnswer.toLowerCase();

    if (isCorrect) {
      QuizScoreM1.userScore++;
      proceedToNextPage(context, CorrectAnswerPageM3());
    } else {
      proceedToNextPage(context, WrongAnswerPageM3());
    }
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class MindanaoContentPage3Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

 MindanaoContentPage3Redirect({required this.isCorrectAnswer});

  @override
  _MindanaoContentPage3RedirectState createState() => _MindanaoContentPage3RedirectState();
}

class _MindanaoContentPage3RedirectState extends State<MindanaoContentPage3Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPageM3()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MindanaoContentPage3Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPageM3()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MindanaoContentPage3Facts()),
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


class CorrectAnswerPageM3 extends StatefulWidget {
  @override
  _CorrectAnswerPageStateM3 createState() => _CorrectAnswerPageStateM3();
}

class _CorrectAnswerPageStateM3 extends State<CorrectAnswerPageM3> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MindanaoContentPage3Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pinkmosqueanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPageM3 extends StatefulWidget {
  @override
  _WrongAnswerPageStateM3 createState() => _WrongAnswerPageStateM3();
}

class _WrongAnswerPageStateM3 extends State<WrongAnswerPageM3> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MindanaoContentPage3Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pinkmosqueanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class MindanaoContentPage3Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/pinkmosquefacts.png',
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
                  MaterialPageRoute(builder: (context) => MindanaoContentPage4()),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 250, 226, 50)),
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
    bool isCorrect = answer.toLowerCase() == correctAnswer.toLowerCase();

    if (isCorrect) {
      QuizScoreM1.userScore++;
      proceedToNextPage(context, CorrectAnswerPageM4());
    } else {
      proceedToNextPage(context, WrongAnswerPageM4());
    }
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class MindanaoContentPage4Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

 MindanaoContentPage4Redirect({required this.isCorrectAnswer});

  @override
  _MindanaoContentPage4RedirectState createState() => _MindanaoContentPage4RedirectState();
}

class _MindanaoContentPage4RedirectState extends State<MindanaoContentPage4Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPageM4()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MindanaoContentPage4Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPageM4()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MindanaoContentPage4Facts()),
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


class CorrectAnswerPageM4 extends StatefulWidget {
  @override
  _CorrectAnswerPageStateM4 createState() => _CorrectAnswerPageStateM4();
}

class _CorrectAnswerPageStateM4 extends State<CorrectAnswerPageM4> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MindanaoContentPage4Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/siargaoislandanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPageM4 extends StatefulWidget {
  @override
  _WrongAnswerPageStateM4 createState() => _WrongAnswerPageStateM4();
}

class _WrongAnswerPageStateM4 extends State<WrongAnswerPageM4> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MindanaoContentPage4Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/siargaoislandanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class MindanaoContentPage4Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/siargaoislandfacts.png',
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
                  MaterialPageRoute(builder: (context) => MindanaoContentPage5()),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 250, 226, 50)),
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
    bool isCorrect = answer.toLowerCase() == correctAnswer.toLowerCase();

    if (isCorrect) {
      QuizScoreM1.userScore++;
      proceedToNextPage(context, CorrectAnswerPageM5());
    } else {
      proceedToNextPage(context, WrongAnswerPageM5());
    }
  }

  void proceedToNextPage(BuildContext context, Widget nextPage) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}

class MindanaoContentPage5Redirect extends StatefulWidget {
  final bool isCorrectAnswer;

 MindanaoContentPage5Redirect({required this.isCorrectAnswer});

  @override
  _MindanaoContentPage5RedirectState createState() => _MindanaoContentPage5RedirectState();
}

class _MindanaoContentPage5RedirectState extends State<MindanaoContentPage5Redirect> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then navigate to the appropriate page
    Future.delayed(Duration(seconds: 2), () {
      if (widget.isCorrectAnswer) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CorrectAnswerPageM5()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MindanaoContentPage5Facts()),
            );
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WrongAnswerPageM5()),
        ).then((_) {
          // Delay for an additional 2 seconds and then redirect to LuzonContentPage1Facts
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MindanaoContentPage5Facts()),
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


class CorrectAnswerPageM5 extends StatefulWidget {
  @override
  _CorrectAnswerPageStateM5 createState() => _CorrectAnswerPageStateM5();
}

class _CorrectAnswerPageStateM5 extends State<CorrectAnswerPageM5> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MindanaoContentPage5Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/tinuyanfallsanswercorrect.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class WrongAnswerPageM5 extends StatefulWidget {
  @override
  _WrongAnswerPageStateM5 createState() => _WrongAnswerPageStateM5();
}

class _WrongAnswerPageStateM5 extends State<WrongAnswerPageM5> {
  @override
  void initState() {
    super.initState();

    // Wait for 2 seconds and then redirect to LuzonContentPage1Facts
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MindanaoContentPage5Facts()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/tinuyanfallsanswerwrong.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class MindanaoContentPage5Facts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/tinuyanfallsfacts.png',
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
                  MaterialPageRoute(builder: (context) => ResultsPage3(userScore: QuizScoreM1.userScore)),
                );
              },
              child: Text("PROCEED",
              style: TextStyle(color:Colors.white ,fontSize: 15)),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 250, 226, 50)),
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
