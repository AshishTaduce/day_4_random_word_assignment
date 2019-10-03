import 'dart:math';
import 'package:dart_random_choice/dart_random_choice.dart';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: PasswordGenerator()
    ),
  );
}

List words = Words.list; // you are given list of words

// Create a stateful widget called `PasswordGenerator` here

class PasswordGenerator extends StatefulWidget {
  @override
  _PasswordGeneratorState createState() => _PasswordGeneratorState();
}

class _PasswordGeneratorState extends State<PasswordGenerator> {

  var random1 = randomChoice(words,);
  var random2 = randomChoice(words,);
  var random3 = randomChoice(words,);



  @override



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RandomPasswords',
        textAlign: TextAlign.center,
        style: TextStyle(
        ),),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('$random1',
                style: TextStyle(
                  fontSize: 32,
                ),),
                Text('$random2',
                  style: TextStyle(
                    fontSize: 32,
                  ),),
                Text('$random3',
                  style: TextStyle(
                    fontSize: 32,
                  ),),
              ],
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  random1 = randomChoice(words,);
                  random2 = randomChoice(words,);
                  random3 = randomChoice(words,);
                });

              },
              child: const Text(
                  'Generate Password!',
                  style: TextStyle(fontSize: 20),

              ),
            ),

          ],
        ),
      ), // Should be PasswordGenerator()
    );
  }
}
