import 'package:flutter/material.dart';
// SizedBox widget 用来创建精确的尺寸.
// 有两种使用方式
// 当 SizedBox 包裹一个 widget 时, 它使用 height,width 属性调整这个 widget 的尺寸；
// 当 SizedBox 没有包裹一个 widget 时, 它使用 height,width 属性创建一个空的空间.
class SizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox widget')),
      body: Container(
        color: Colors.grey,
        child: Row(
          children: [
            BlueBox(),
            SizedBox(
              width: 50,
            ),
            SizedBox(
              width: 100,
              child: BlueBox(),
            ),
            SizedBox(
              width: 25,
            ),
            SizedBox(
              height: 100,
              child: BlueBox(),
            ),
          ],
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
