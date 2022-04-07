import 'package:flutter/material.dart';
import 'package:prototype/newProject/newAddress.dart';

class NewProject extends StatelessWidget {
  String title = "Neues Projekt";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(15.0),
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Projektname',
            ),
          ),
        ),
        newAddress(),
        Center(
          child: Text("Kamera starten"),
        ),
      ],
    );
  }
}
