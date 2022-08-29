import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[600],
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.indigo[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 2;
  int right = 5;
  void changedice() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changedice();
              },
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changedice();
              },
              child: Image.asset('images/dice$right.png'),
            ),
          )
        ],
      ),
    );
  }
}
