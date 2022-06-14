import 'package:flutter/material.dart';
import 'package:prototype/localDrive/file_utils.dart';
import 'package:prototype/localDrive/content.dart';
import 'package:prototype/projectView/projectGalery.dart';
import 'package:prototype/projectView/projectMap.dart';

class ProjectView extends StatefulWidget {
  String element;
  ProjectView(this.element);
  _ProjectViewState createState() {
    // TODO: implement createState
    return _ProjectViewState(element);
  }
}

class _ProjectViewState extends State<ProjectView> {
  String element;
  _ProjectViewState(this.element);
  String name = "";

  String getNameValue() {
    FileUtils.readJsonFile().then((contents) {
      setState(() {
        name = contents['projectName'];
      });
    });
    return name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(element),
        primary: true,
      ),
      body: Column(children: [
        // test to check if Project view is able to load data, which had been entered before
        Text("name: " + getNameValue()),
        Center(child: ProjectMap()),
        Container(
          margin: const EdgeInsets.all(10.0),
          child: Text("Adresse: " + element + "straße"),
        ),
        Text("Fälligkeitsdatum: 15.05.2022"),
        //  ProjectGalery() -- musste auskommentiert werden wegen endlosschleife, eh nur demozwecke
      ]),
    );
  }
}
