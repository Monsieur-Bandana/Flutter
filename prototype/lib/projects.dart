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
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/Wall1.jpg'),
                    Text(element),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
