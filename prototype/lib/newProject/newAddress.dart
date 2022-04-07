import 'package:flutter/material.dart';

class NewAddress extends StatelessWidget {
  String title = "Archiv";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Adresse',
        ),
      ),
    );
  }
}
