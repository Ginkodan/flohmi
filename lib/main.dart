import 'package:flutter/material.dart';

void main() {
  runApp(FlohmiApp());
}

class FlohmiApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flohmi'),
        ),
        body: Text('Flohmi App content / login page'),
      ),
    );
  }
}
