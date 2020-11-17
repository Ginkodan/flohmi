import 'package:flohmi/flohmi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FlohmiApp());
}

class FlohmiApp extends StatelessWidget {
  final List<Flohmi> flohmi = [
    Flohmi(id: 'id1', title: 'flohmi 1', plz: 3507, date: DateTime.now(),),
    Flohmi(id: 'id2', title: 'flohmi 2', plz: 3507, date: DateTime.now(),),
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flohmi'),
        ),
        body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            Column(
              children: [
                Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                child: Text(
                  "Sign in"
                  ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple,),
                ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                  child: Text(
                  "Create a new account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.greenAccent)
                ),
            ),
              ],
            ),
            Column(children: flohmi.map((fl) {
              return Card(child: Text(fl.title),);
            }).toList()
            ),
          ],
          

        ),
      ),
    );
  }
}
