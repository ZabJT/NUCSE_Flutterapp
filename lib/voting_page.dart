import 'package:flutter/material.dart';
import 'votingreceiver_page.dart';

class voting_page extends StatelessWidget {
  // Declare variables to store the received data
  final String fullname;
  final String studentno;
  final String age;
  final String message; // Add the message property
  final TextEditingController _textEditingController4 = TextEditingController();
  final TextEditingController _textEditingController5 = TextEditingController();

  // Constructor to receive the data when the page is created
  voting_page({
    required this.fullname,
    required this.studentno,
    required this.age,
    required this.message, // Include the message property in the constructor
  });



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 49, 145),
        elevation: 15,
        title: Text(
          'DETAILS',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/nubuildingmain.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
               Container( //open space
              color: Color.fromARGB(0, 255, 255, 255),
              width: 500.0,
              height: 100.0,
            ),
              Container(
                child: Column(
                  children: [
                    Text('Welcome!', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black)),
                    SizedBox(height: 1),
                  ],
                ),
              ),
              SizedBox(height: 1),
              Container( //FULLNAME
               padding: EdgeInsetsDirectional.only(top: 1.0), // Add margin top
               child: Text(
                fullname, 
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal, color: Colors.black),
                 ),
                ),
              Container( //open space
              color: Color.fromARGB(0, 255, 255, 255),
              width: 500.0,
              height: 100.0,
            ),
              SizedBox(height: 1),
              Container( //President
               padding: EdgeInsetsDirectional.only(top: 1.0), // Add margin top
               child: Text('President: ',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                 ),
                ),
                SizedBox(height: 1),
              Container( //Pres1
               padding: EdgeInsetsDirectional.only(top: 1.0), // Add margin top
               child: Text('- President 1 ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                 ),
                ),
                Container( //Pres2
               padding: EdgeInsetsDirectional.only(top: 1.0), // Add margin top
               child: Text('- President 2 ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                 ),
                ),
                 Container(//text field president
                    color: Color.fromARGB(166, 255, 255, 255),
                    width: 500.0,
                    height: 50.0,
                    margin: EdgeInsetsDirectional.all(10),
                    child: TextField(
                      controller: _textEditingController4,
                      decoration: InputDecoration(
                        labelText: 'President',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 1),
              Container( //VicePresident
               padding: EdgeInsetsDirectional.only(top: 1.0), // Add margin top
               child: Text('Vice President: ',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                 ),
                ),
                SizedBox(height: 1),
              Container( //VicePres1
               padding: EdgeInsetsDirectional.only(top: 1.0), // Add margin top
               child: Text('- Vice President 1 ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                 ),
                ),
                Container( //VicePres2
               padding: EdgeInsetsDirectional.only(top: 1.0), // Add margin top
               child: Text('- Vice President 2 ',style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                 ),
                ),
                  Container(//text field vice president
                    color: Color.fromARGB(166, 255, 255, 255),
                    width: 500.0,
                    height: 50.0,
                    margin: EdgeInsetsDirectional.all(10),
                    child: TextField(
                      controller: _textEditingController5,
                      decoration: InputDecoration(
                        labelText: 'Vice President',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                 ElevatedButton(
  onPressed: () {
    String enteredText = _textEditingController4.text;
    String enteredText2 = _textEditingController5.text;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VotingReceiverPage(president: enteredText, VicePresident: enteredText2)),
    );
  },
  child: Text('SUBMIT'),
),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    'Goodluck on your Examination Day, Nationalian!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 0, 0)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    'Education that Works',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal, fontStyle: FontStyle.italic, color: Colors.black),
                  ),
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }}