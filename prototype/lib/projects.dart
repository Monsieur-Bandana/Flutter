import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  List<String> projects;

  Projects(this.projects);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: projects
          .map((element) => Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/Wall1.jpg'),
                      ),
                      width: 150,
                    ),
                    Column(children: <Widget>[
                      Text("Name: " + element),
                      Text("Adresse: " + element + "straße")
                    ])
                  ],
                ),
              ))
          .toList(),
    );
  }
}
