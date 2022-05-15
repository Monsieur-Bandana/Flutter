import 'package:flutter/material.dart';

import 'package:prototype/projectView/projectGalery.dart';
import 'package:prototype/projectView/projectMap.dart';

class ProjectView extends StatelessWidget {
  String element;

  ProjectView(this.element);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(element),
        primary: true,
      ),
      body: Column(children: [
        Center(child: ProjectMap()),
        Container(
          margin: const EdgeInsets.all(10.0),
          child: Text("Adresse: " + element + "straße"),
        ),
        Text("Fälligkeitsdatum: 15.05.2022"),
        ProjectGalery()
      ]),
    );
  }
}
