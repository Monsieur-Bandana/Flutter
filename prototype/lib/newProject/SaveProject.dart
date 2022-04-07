import 'package:flutter/material.dart';

class SaveButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SaveButtonState();
  }
}

class _SaveButtonState extends State<SaveButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Projekt speichern'),
      ),
    );
  }
}
