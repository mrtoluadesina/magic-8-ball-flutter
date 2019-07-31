import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MagicApp(),
    );

class MagicApp extends StatefulWidget {
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int anyBall = 1;
  void answer() {
    setState(() {
      anyBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              answer();
            },
            child: Image.asset('images/ball$anyBall.png'),
          ),
        ),
      ),
    );
  }
}
