import 'package:flutter/material.dart';
import 'package:prototype/localDrive/content.dart';
import 'package:prototype/newProject/saveTest.dart';
import 'package:prototype/localDrive/content.dart';

/**
 * gibt ein Textfeld zum Eingeben vom Projektnamen zurück
 */

//TODO rename to inputfield, make more generic using type
class TextFieldProjectName extends StatefulWidget {
  @override
  _TextFieldProjectNameState createState() {
    return _TextFieldProjectNameState();
  }
}

class _TextFieldProjectNameState extends State<TextFieldProjectName> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: TextField(
        controller: nameController,
        onChanged: (text) {
          setState(() {
            SaveTest.cash.newProjectName = text;
          });
        },
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Projektnames',
        ),
      ),
    );
  }
}
