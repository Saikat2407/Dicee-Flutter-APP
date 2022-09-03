import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        // : new ThemeData.dark(),
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Center(
            child: Text('Dice'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int Rightdice = 1;

  void Dicefacechage(){
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      Rightdice = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                Dicefacechage();
              },
              child: Image.asset('images/dice$leftdice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                Dicefacechage();
              },
              child: Image.asset('images/dice$Rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}