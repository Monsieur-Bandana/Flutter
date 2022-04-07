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
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Text("Keine Projekte im Archiv"),
                ),
                const Icon(Icons.arrow_downward),
              ],
            ),
          ),
          AddProjectButton()
        ],
      ),
    );
  }
}
