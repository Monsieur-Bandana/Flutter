import 'package:flutter/material.dart';
import 'package:prototype/project_Manager.dart';

import './navBar.dart';

void main() => runApp(RootClass());

class RootClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo.shade900,
        backgroundColor: Colors.indigo.shade200,
      ),
      home: NavBar(),
    );
  }
}
