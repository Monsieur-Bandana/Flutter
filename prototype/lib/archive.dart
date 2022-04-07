import 'package:flutter/material.dart';
import 'package:prototype/newProject/newProjectButton.dart';

class Archive extends StatelessWidget {
  String title = "Archiv";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Archiv"),
        primary: true,
      ),
      body: Column(
        children: [
          Center(
            child: Text("Noch keine Archivdaten vorhanden"),
          ),
          AddProjectButton()
        ],
      ),
    );
  }
}
