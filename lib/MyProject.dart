import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class Myproject extends StatefulWidget {
  @override
  State<Myproject> createState() => _MyprojectState();
}

class _MyprojectState extends State<Myproject> {
int leftnumber=1;
int rightnumber=1;
void roll(){
  setState(() {
     leftnumber=Random().nextInt(6)+1 ;
     rightnumber=Random().nextInt(6)+1;
  });
}
void rollTap(){
  setState(() {
    rightnumber=Random().nextInt(6)+1;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Row(
            children: [
              Text(
                'The Dice App',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: rollTap,
                child: Text(
                  'Roll one Dice',
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Shake to throw',
                style: TextStyle(fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/dice$leftnumber.png'),
                  Image.asset('assets/images/dice$rightnumber.png'),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .2),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10))),
                  onPressed:roll,
                  child: Text(
                    'Roll Dice',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ))
            ],
          ),
        ));
  }
}
