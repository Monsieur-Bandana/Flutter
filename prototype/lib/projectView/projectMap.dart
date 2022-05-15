import 'package:flutter/material.dart';

class ProjectMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Image.asset('assets/map.JPG'),
        ),
        width: 350,
      ),
    );
  }
}
