import 'package:flutter/material.dart';
import 'category_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pinopointfront.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  // Navigate to CategoryPage when the startgame button is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryPage(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 400.0),
                  child: Image.asset('assets/startgame.png', width: 200.0, height: 200.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
