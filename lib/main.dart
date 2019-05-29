import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
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
  int ldiceNum = 1;
  int rdiceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        child: Row(
          children: <Widget>[
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        ldiceNum = Random().nextInt(6) + 1;
                        rdiceNum = Random().nextInt(6) + 1;
                        print(ldiceNum);
                      });
                    },
                    child: Image.asset('images/dice$ldiceNum.png'))),
            Expanded(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rdiceNum = Random().nextInt(6) + 1;
                        ldiceNum = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$rdiceNum.png'))),
          ],
        ),
      ),
    );
  }
}
