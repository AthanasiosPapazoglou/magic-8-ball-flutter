import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[800],
        ),
        body: MyHomeApp(),
      ),
    ),
  );
}

class MyHomeApp extends StatefulWidget {
  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

int imageSelection = 1;

class _MyHomeAppState extends State<MyHomeApp> {
  @override
  Widget build(BuildContext xontext) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: () {
            setState(() {
              imageSelection = Random().nextInt(5) + 1;
              print(imageSelection);
            });
          },
          child: Image.asset('images/ball$imageSelection.png'),
        ),
      ),
    );
  }
}
