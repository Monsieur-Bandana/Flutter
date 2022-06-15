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

  Map<String, dynamic> content = {
    'projectName': "",
    'status': "",
    'client': ""
  };

  Map<String, dynamic> getJsonValue() {
    FileUtils.readJsonFile().then((contents) {
      setState(() {
        content = contents;
      });
    });
    return content;
  }

  @override
  Widget build(BuildContext context) {
    getJsonValue();
    return Scaffold(
      appBar: AppBar(
        title: Text(element),
        primary: true,
      ),
      body: Column(children: [
        // test to check if Project view is able to load data, which had been entered before
        Text("name: " + content["projectName"]),
        Center(child: ProjectMap()),
        Text("client: " + content["client"]),
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
