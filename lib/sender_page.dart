import 'package:flutter/material.dart';
import 'voting_page.dart';

class SenderPage extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _textEditingController2 = TextEditingController();
  final TextEditingController _textEditingController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/nubuildingmain.png'), // Replace with your actual image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Color.fromARGB(255, 16, 30, 117),
              elevation: 15,
              shadowColor: Color.fromARGB(255, 98, 149, 243),
              title: Text(
                'NATIONAL UNIVERSITY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(0, 255, 255, 255),
              width: 500.0,
              height: 100.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Add the image container above the student information
                  Container(
                    width: 150.0, // Adjust the width as needed
                    height: 150.0, // Adjust the height as needed
                    margin: EdgeInsets.only(bottom: 20.0), // Add margin to separate from text
                    child: Image.asset('assets/nulogo.png'),
                  ),
                  Text(
                    'NATIONAL UNIVERSITY',
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 16, 30, 117),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Commission on Student Elections',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 16, 30, 117),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                  Container(
                    color: Color.fromARGB(166, 255, 255, 255),
                    width: 500.0,
                    height: 50.0,
                    margin: EdgeInsetsDirectional.all(10),
                    child: TextField(
                      controller: _textEditingController2,
                      decoration: InputDecoration(
                        labelText: 'Student No.',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(166, 255, 255, 255),
                    width: 500.0,
                    height: 50.0,
                    margin: EdgeInsetsDirectional.all(10),
                    child: TextField(
                      controller: _textEditingController3,
                      decoration: InputDecoration(
                        labelText: 'Age',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  ElevatedButton(
  onPressed: () {
    String enteredText = _textEditingController.text;
    String enteredText2 = _textEditingController2.text;
    String enteredText3 = _textEditingController3.text;

    int age = int.tryParse(enteredText3) ?? 0; // Try to parse age, default to 0 if parsing fails

    if (age >= 18) {
      // Age is 18 or older
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => voting_page(
            fullname: enteredText,
            studentno: enteredText2,
            age: enteredText3,
            message: 'You can vote!',
          ),
        ),
      );
    } else {
      // Show an alert dialog for age less than 18
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Submission Failed'),
            content: Text('You cannot vote!'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the alert dialog
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  },
  child: Text('SUBMIT'),
),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

