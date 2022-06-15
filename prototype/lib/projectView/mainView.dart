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

  String getJsonValue(key) {
    FileUtils.readJsonFile().then((contents) {
      setState(() {
        name = contents[key];
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
        Text("name: " + getJsonValue("projectName")),
        Center(child: ProjectMap()),
        //   Text("client: " + getJsonValue("client")),
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
