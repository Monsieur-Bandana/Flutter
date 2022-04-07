import 'package:flutter/material.dart';

import './project_Manager.dart';

void main() => runApp(RootClass());

class RootClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo.shade900,
        backgroundColor: Colors.indigo.shade200,
      ),
      home: Scaffold(
        body: ProjectManager(),
      ),
    );
  }
}
