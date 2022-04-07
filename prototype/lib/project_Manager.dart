import 'package:flutter/material.dart';

import './projects.dart';

class ProjectManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProjectManagerState();
  }
}

class _ProjectManagerState extends State<ProjectManager> {
  List<String> _projects = [];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Projects(_projects),
        Container(
          margin: EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                i += 1;
                _projects.add('Bauprojekt ' + (i).toString());
              });
              print(_projects);
            },
            child: Text('Neues Projekt'),
          ),
        ),
      ],
    );
  }
}
