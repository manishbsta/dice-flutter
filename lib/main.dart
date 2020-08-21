import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.teal,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 60),
          child: Text(
              'Click on any dice to shuffle them',
              style: TextStyle (
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice_$leftDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice_$rightDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    changeDiceFace();
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}