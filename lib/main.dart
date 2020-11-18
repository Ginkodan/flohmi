import 'package:flohmi/flohmi.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(FlohmiApp());
}

class FlohmiApp extends StatelessWidget {
  final List<Flohmi> flohmi = [
    Flohmi(
      id: 'id1',
      title: 'flohmi 1',
      plz: 3507,
      date: DateTime.now(),
    ),
    Flohmi(
      id: 'id2',
      title: 'flohmi 2',
      plz: 3507,
      date: DateTime.now(),
    ),
  ];
  String titleInput;
  String plzInput;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flohmi'),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextField(
                          decoration: InputDecoration(labelText: 'Flohmi'),
                          onChanged: (value) => titleInput = value,
                        ),
                        TextField(
                          decoration:
                              InputDecoration(labelText: 'Postleitzahl'),
                          onChanged: (value) => plzInput = value,
                        ),
                        FlatButton(
                          onPressed: () {
                            print(titleInput);
                            print(plzInput);
                          },
                          child: Text('Neuer Flohmi'),
                          textColor: Colors.purple,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: flohmi.map((fl) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: Text(
                          'plz: ${fl.plz}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.greenAccent),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fl.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            DateFormat().add_yMd().format(fl.date),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
