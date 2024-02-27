import 'dart:math';
import 'package:flutter/material.dart';
import 'luzon_contentpage.dart';
import 'visayas_contentpage.dart';
import 'mindanao_contentpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoryPage(),
    );
  }
}

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  double luzonImageSize = 100.0;
  double visayasImageSize = 100.0;
  double mindanaoImageSize = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(231, 0, 0, 0),
              Colors.black87,
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/categorybg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Add your other widgets or buttons here
                ],
              ),
            ),
            Positioned(
              top: 120.0,
              left: 110.0,
              child: InkWell(
                onTap: () {
                  // Animate the enlargement of the Luzon image
                  setState(() {
                    luzonImageSize = 150.0;
                    visayasImageSize = 100.0;
                    mindanaoImageSize = 100.0;
                  });

                  // Wait for the Luzon image to enlarge before redirecting
                  Future.delayed(Duration(milliseconds: 300), () {
                    // Redirect to the FirstRedirectPage for additional animation
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstRedirectPage(LuzonContentPage1())),
                    );
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: luzonImageSize,
                  height: luzonImageSize,
                  child: Image.asset(
                    'assets/pinpointluzon.png',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 285.0,
              left: 280.0,
              child: InkWell(
                onTap: () {
                  setState(() {
                    luzonImageSize = 100.0;
                    visayasImageSize = 150.0;
                    mindanaoImageSize = 100.0;
                  });
                  // Wait for the Visayas image to enlarge before redirecting
                  Future.delayed(Duration(milliseconds: 300), () {
                    // Redirect to the SecondRedirectPage for additional animation
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRedirectPage(VisayasContentPage1())),
                    );
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: visayasImageSize,
                  height: visayasImageSize,
                  child: Image.asset(
                    'assets/pinpointvisayas.png',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 420.0,
              left: 250.0,
              child: InkWell(
                onTap: () {
                  setState(() {
                    luzonImageSize = 100.0;
                    visayasImageSize = 100.0;
                    mindanaoImageSize = 150.0;
                  });
                   // Wait for the Mindanao image to enlarge before redirecting
                  Future.delayed(Duration(milliseconds: 300), () {
                    // Redirect to the ThirdRedirectPage for additional animation
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdRedirectPage(MindanaoContentPage1())),
                    );
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: mindanaoImageSize,
                  height: mindanaoImageSize,
                  child: Image.asset(
                    'assets/pinpointmindanao.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstRedirectPage extends StatefulWidget {
  final Widget nextPage;

  FirstRedirectPage(this.nextPage);

  @override
  _FirstRedirectPageState createState() => _FirstRedirectPageState();
}

class _FirstRedirectPageState extends State<FirstRedirectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/luzonotwbg.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // Wait for a certain duration before navigating to the next page
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.nextPage),
      );
    });
  }
}

class SecondRedirectPage extends StatefulWidget {
  final Widget nextPage;

  SecondRedirectPage(this.nextPage);

  @override
  _SecondRedirectPageState createState() => _SecondRedirectPageState();
}

class _SecondRedirectPageState extends State<SecondRedirectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/visayasotwbg.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // Wait for a certain duration before navigating to the next page
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.nextPage),
      );
    });
  }
}

class ThirdRedirectPage extends StatefulWidget {
  final Widget nextPage;

  ThirdRedirectPage(this.nextPage);

  @override
  _ThirdRedirectPageState createState() => _ThirdRedirectPageState();
}

class _ThirdRedirectPageState extends State<ThirdRedirectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mindanaootwbg.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // Wait for a certain duration before navigating to the next page
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.nextPage),
      );
    });
  }
}

