import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: DicePage(),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 3;
  Random rand = new Random();

  void modifyLeftDiceNumber() {
    print('Left Dice clicked');
    setState(() {
      leftDiceNumber = rand.nextInt(6) + 1;
      rightDiceNumber = rand.nextInt(6) + 1;
    });
  }

  void modifyRightDiceNumber() {
    print('Right Dice clicked');
    setState(() {
      leftDiceNumber = rand.nextInt(6) + 1;
      rightDiceNumber = rand.nextInt(6) + 1;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Roll the Dice'),
          backgroundColor: Colors.red,
        ),
        body: Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image(
                  image: AssetImage('assets/dice$leftDiceNumber.png'),

                ),
                onPressed:
                modifyLeftDiceNumber,

              ),

            ),
            Expanded(
              child: FlatButton(
                child: Image(
                  image: AssetImage('assets/dice$rightDiceNumber.png'),

                ),
                onPressed: modifyRightDiceNumber,
              ),
            ),
          ],
        )

    );
  }
}

