import 'package:flutter/material.dart';
// Expanded 组件和 Flexible 组件类似, Expanded 组件的作用是包裹一个组件并强制该组件填满多余的空间.
// ===情况一===
// children: [
//   BlueBox(),
//   Expanded(child: BlueBox(),),
//   BlueBox(),
// ],
// 被 Expanded 包裹的组件,填满了多余的空间.
// ===情况二===
// children: [
//   BlueBox(),
//   Expanded(child: BlueBox(),),
//   Expanded(child: BlueBox(),),
// ],
// 有两个 widget 被 Expanded widget 包裹了,那么多余的空间,它们两个各得到一半,并且都要填满分到的多余空间.
class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded widget')),
      body: Container(
        color: Colors.grey,
        child: Row(
          children: [
            BlueBox(),
            Expanded(child: BlueBox(),),
            Expanded(child: BlueBox(),),
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
