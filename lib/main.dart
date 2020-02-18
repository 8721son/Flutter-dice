import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftNumber = 1;

  int rightNumber = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Dice',
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
        body: buildDice(),
      ),
    );
  }

  Center buildDice() {
    return Center(
        child: Row(
          children: <Widget>[
            Expanded(flex: 1, child: FlatButton(onPressed: () {

              setState(() { // MyApp.createState()
                leftNumber = Random().nextInt(6)+1;
                print('왼쪽 버튼 클릭됨 : $leftNumber');
              });

            }, child: Image.asset('images/dice$leftNumber.png'))),
            Expanded(flex: 1, child: FlatButton(onPressed: () {

              setState(() { // MyApp.createState()
                rightNumber = Random().nextInt(6)+1;
                print('오른쪽 버튼 클릭됨 : $rightNumber');
              });
            }, child: Image.asset('images/dice$rightNumber.png'))),
          ],
        ),
      );
  }
}
