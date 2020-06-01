import 'package:flutter/material.dart';
// Spacer widget
// 和 SizedBox widget 类似,也可以创建 widget 之间的空间.
// 但在这点上, SizedBox 和 Spacer 是有区别的
// Spacer 创建空间使用的是 flex 属性；
// SizedBox 创建空间使用的是指定的逻辑像素值.
// 这里的 flex 的含义和 Flexible widget 里的是一样的.
class SpacerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Spacer widget')),
      body: Container(
        color: Colors.grey,
        child: Row(
          children: [
            BlueBox(),
            Spacer(flex: 1,),
            BlueBox(),
            Spacer(flex: 1,),
            BlueBox(),
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
