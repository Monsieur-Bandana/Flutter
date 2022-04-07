import 'package:flutter/material.dart';
import 'package:prototype/new_Project.dart';

import '../archive.dart';
import '../project_Manager.dart';

class NewProjectNavBar extends StatefulWidget {
  const NewProjectNavBar({Key? key}) : super(key: key);

  @override
  State<NewProjectNavBar> createState() => _NewProjectNavBarState();
}

class _NewProjectNavBarState extends State<NewProjectNavBar> {
  int _bodyWidgetIndex = 0;
  final screens = [ProjectManager(), NewProject(), Archive()];

  final titles = [ProjectManager().title, NewProject().title, Archive().title];

  void _onItemTapped(int index) {
    setState(() {
      _bodyWidgetIndex = index;
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NewProject(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo),
              label: 'Neues Projekt',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.archive),
              label: 'Archiv',
            ),
          ],
          currentIndex: _bodyWidgetIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
