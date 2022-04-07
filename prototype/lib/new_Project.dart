import 'package:flutter/material.dart';

import 'package:prototype/newProject/SaveProject.dart';
import 'package:prototype/newProject/newAddress.dart';
import 'package:prototype/newProject/newPhotoButton.dart';

class NewProject extends StatelessWidget {
  String title = "Neues Projekt";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Neues Projekt"),
        primary: true,
      ),
      body: Column(
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
          NewAddress(),
          AddPhotoButton(),
          SaveButton(),
        ],
      ),
    );
  }
}
