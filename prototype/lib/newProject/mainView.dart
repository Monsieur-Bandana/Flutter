import 'package:flutter/material.dart';

import 'package:prototype/newProject/newAddress.dart';
import 'package:prototype/newProject/newPhotoButton.dart';
import 'package:prototype/newProject/saveTest.dart';

class NewProject extends StatefulWidget {
  String title = "Neues Projekt";
  @override
  State<StatefulWidget> createState() {
    return _NewProjectState();
  }
}

class _NewProjectState extends State<NewProject> {
//  String projectName;
  // String projectAddress;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Neues Projekt"),
          primary: true,
        ),
        body: Form(
          child: Column(
            children: <Widget>[
              NewAddress(),
              AddPhotoButton(),
              SaveTest(),
            ],
          ),
        ),
      ),
    );
  }
}
