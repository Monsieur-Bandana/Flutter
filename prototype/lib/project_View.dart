import 'package:flutter/material.dart';

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
        Center(
          child: Container(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              child: Image.asset('assets/map.JPG'),
            ),
            width: 350,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          child: Text("Adresse: " + element + "straße"),
        ),
        Text("Bildergalerie...")
      ]),
    );
  }
}
