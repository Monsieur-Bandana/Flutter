import 'package:flutter/material.dart';
import '../localDrive/file_utils.dart';
import 'newAddress.dart';
import 'newPhotoButton.dart';

class SaveTest extends StatefulWidget {
  @override
  _SaveTestState createState() {
    // TODO: implement createState
    return _SaveTestState();
  }
}

class _SaveTestState extends State<SaveTest> {
  String projectName = "Defaultname";
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(15.0),
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Projektname',
            ),
          ),
        ),
        NewAddress(),
        AddPhotoButton(),
        Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              // test: saves text from project-name-field as .txt file in the download folder
              FileUtils.saveToFile(_nameController.text);
            },
            child: const Text('Projekt speichern'),
          ),
        ),
      ],
    );
  }
}
