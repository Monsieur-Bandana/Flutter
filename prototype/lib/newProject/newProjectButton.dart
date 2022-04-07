import 'package:flutter/material.dart';

import '../new_Project.dart';

class AddProjectButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddProjectButtonState();
  }
}

class _AddProjectButtonState extends State<AddProjectButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewProject()),
          );
        },
        child: const Text('Neues Projekt anlegen 2'),
      ),
    );
  }
}
