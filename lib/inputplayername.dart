/*import 'package:flutter/material.dart';

class SenderPage extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/categorybg.png'), // Replace with your actual image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Color.fromARGB(166, 255, 255, 255),
                width: 500.0,
                height: 50.0,
                margin: EdgeInsetsDirectional.all(10),
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
  onPressed: () {
    String enteredText = _textEditingController.text;

    // Navigate to LuzonContentPage1 and pass enteredText
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LuzonContentPage1(fullname: enteredText),
      ),
    );
  },
  child: Text('SUBMIT'),
),
            ],
          ),
        ),
      ),
    );
  }
}*/
