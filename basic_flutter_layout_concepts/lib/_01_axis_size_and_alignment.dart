import 'package:flutter/material.dart';

class AxisSizeAndAlignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AxisSizeAndAlignment'),
      ),
      body: Container(
        color: Colors.grey,
        child: Row(
          // 指定行或列占据对应的主轴多大的空间，这个默认是 MainAxisSize.max，
          // MainAxisSize.max 占据主轴上的所有空间，哪怕根本用不了那么大的空间。
          // MainAxisSize.min 仅仅占据主轴上够chidren使用的空间。
          mainAxisSize: MainAxisSize.max,
          // 在 mainAxisSize 为 max 时，决定行或列如何在额外的空间里定位 children。
          // 如果 mainAxisSize 为 min，那么下面的属性是没有效果的。
          // MainAxisAlignment.start 行：靠左；列：靠顶
          // MainAxisAlignment.end 行：靠右；列：靠底
          // MainAxisAlignment.center 居中
          // MainAxisAlignment.spaceBetween 等间距，左右或上下不留空间
          // MainAxisAlignment.spaceAround 等间距，左右或上下留一半的间距空间
          // MainAxisAlignment.spaceEvenly 完全均与分布，左右或上下的空间和间距是一样的。
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: 决定行或列在相交轴上定位 children
          // 这个属性不受制于 mainAxisSize 的设置。
          // CrossAxisAlignment.start 定位 children 靠近相交轴的 start。（行：靠 top，列：靠 left）
          // CrossAxisAlignment.end 定位 children 靠近相交轴的 end。（行：靠 bottom，列：靠 right）
          // CrossAxisAlignment.center 定位 children 靠近相交轴的 中部。r
          // CrossAxisAlignment.stretch Stretches children across the cross axis. (Top-to-bottom for Row, left-to-right for Column)
          // CrossAxisAlignment.baseline 把 children 沿着基线对齐。(Text class only, and requires that the textBaseline property is set to TextBaseline.alphabetic.)
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlueBox(),
            BiggerBlueBox(),
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

class BiggerBlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
