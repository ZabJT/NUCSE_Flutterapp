import 'package:flutter/material.dart';

class VotingReceiverPage extends StatelessWidget{
  final String president;
  final String VicePresident;

  const VotingReceiverPage({required this.president, required this.VicePresident});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Information Received'),
        ),
        body:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text('President:', style:TextStyle(fontSize:18)),
              SizedBox(height:10),
              Text(president, style: TextStyle(fontSize:24, fontWeight: FontWeight.bold)),
             
              Text('Vice President:', style:TextStyle(fontSize:18)),
              SizedBox(height:10),
              Text(VicePresident, style: TextStyle(fontSize:24, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        );
      }
    }