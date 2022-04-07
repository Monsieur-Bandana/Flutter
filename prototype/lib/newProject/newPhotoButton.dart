import 'package:flutter/material.dart';

import 'NewPhotoScreen.dart';

class AddPhotoButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddPhotoButtonState();
  }
}

class _AddPhotoButtonState extends State<AddPhotoButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CameraApp()),
          );
        },
        child: const Text('Photo hinzufügen'),
      ),
    );
  }
}
