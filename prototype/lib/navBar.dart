import 'package:flutter/material.dart';

import 'package:prototype/archive.dart';
import 'package:prototype/new_Project.dart';
import './project_Manager.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _bodyWidgetIndex = 0;
  final screens = [ProjectManager(), NewProject(), Archive()];

  final titles = [ProjectManager().title, NewProject().title, Archive().title];

  void _onItemTapped(int index) {
    setState(() {
      _bodyWidgetIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_bodyWidgetIndex],
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
    );
  }
}
