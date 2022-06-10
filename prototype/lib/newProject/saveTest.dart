import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../localDrive/file_utils.dart';

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
            //      onChanged: projectName=_nameController.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Projektname',
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              FileUtils.saveToFile(_nameController.text);
            },
            child: const Text('Projekt speichern'),
          ),
        ),
      ],
    );
  }
}
