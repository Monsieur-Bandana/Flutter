import 'package:flutter/material.dart';
import 'package:prototype/localDrive/content.dart';
import 'package:prototype/newProject/textfieldProjectName.dart';
import '../localDrive/file_utils.dart';
import 'newAddress.dart';
import 'newPhotoButton.dart';

class SaveTest extends StatefulWidget {
  static var cash = Content();

  @override
  _SaveTestState createState() {
    return _SaveTestState();
  }
}

class _SaveTestState extends State<SaveTest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFieldProjectName(),
        NewAddress(),
        AddPhotoButton(),
        Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              FileUtils.saveToFile(SaveTest.cash.newProjectName);
            },
            child: const Text('Projekt speichern'),
          ),
        ),
      ],
    );
  }
}
