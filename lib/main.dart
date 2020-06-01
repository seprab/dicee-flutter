import 'dart:math';
import 'package:flutter/material.dart';

String msgDer = "Derecho: ";
String msgIzq = "Izquierdo: ";

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  var random = Random();

  Image randomDiceFace()
  {
    int randNumber = random.nextInt((6))+1;
    return Image.asset("images/dice$randNumber.png");
  }
  Image leftFace = Image.asset("images/dice1.png");
  Image rightFace= Image.asset("images/dice1.png");

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftFace = randomDiceFace();
                });
                /*Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text(msgIzq + leftDiceNumber.toString())));*/
              },
              child: leftFace,
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightFace = randomDiceFace();
                });
                /*Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text(msgDer + rightDiceNumber.toString())));*/
              },
              child: rightFace,
            ),
          ),
        ],
      ),
    );
  }
}
