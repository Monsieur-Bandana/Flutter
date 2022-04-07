import 'package:flutter/material.dart';

import 'package:prototype/projects.dart';

void main() => runApp(RootClass());

class RootClass extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _RootClassState();
  }
}

class _RootClassState extends State<RootClass> {
  List<String> projects = [];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Startseite'),
          actions: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    i += 1;
                    projects.add('Bauprojekt ' + (i).toString());
                  });
                  print(projects);
                },
                child: Text('Neues Projekt'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  print(projects);
                },
                child: Text('Archiv'),
              ),
            )
          ],
        ),
        body: Projects(projects),
      ),
    );
  }
}
