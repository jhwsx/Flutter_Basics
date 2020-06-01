import 'package:flutter/material.dart';
// Image widget
// 从网络上获取
// 从本地获取
class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image widget')),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//            Image.network('https://urlzs.com/RsqCz'),
            Image.network('https://github.com/flutter/website/blob/master/examples/layout/sizing/images/pic2.jpg?raw=true'),
            Image.asset('assets/images/dog.jpeg'),
          ],
        ),
      ),
    );
  }
}
