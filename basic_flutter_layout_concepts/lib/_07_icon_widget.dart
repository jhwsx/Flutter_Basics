import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon widget')),
      body: Container(
        color: Colors.grey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.widgets,
              size: 50,
              color: Colors.blue,
            ),
            Icon(
              Icons.widgets,
              size: 50,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
