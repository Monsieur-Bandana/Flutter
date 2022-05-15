import 'package:flutter/material.dart';
import 'package:prototype/projectView/mainView.dart';

class Projects extends StatelessWidget {
  List<String> projects;

  Projects(this.projects);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: projects
          .map(
            (element) => Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProjectView(element)),
                  );
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/Wall1.jpg'),
                      ),
                      width: 150,
                    ),
                    Column(children: <Widget>[
                      Text("Name: " + element),
                      Text("Adresse: " + element + "straße"),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(Icons.delete),
                              style:
                                  ElevatedButton.styleFrom(primary: Colors.red),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            child: ElevatedButton(
                                onPressed: () {}, child: Icon(Icons.archive)),
                          ),
                        ],
                      )
                    ])
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
