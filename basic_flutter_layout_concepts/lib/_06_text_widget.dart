import 'package:flutter/material.dart';

// Text widget
// 作用:显示文本,并且可以配置不同的字体,大小,颜色.
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text widget')),
      body: Container(
        color: Colors.grey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              'Hey!',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Futura',
                color: Colors.blue,
              ),
            ),
            Text(
              'Hey!',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Futura',
                color: Colors.green,
              ),
            ),
            Text(
              'Hey!',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Futura',
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
