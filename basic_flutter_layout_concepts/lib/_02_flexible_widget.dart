import 'package:flutter/material.dart';
// 1, Flexible 组件包裹一个组件，那么那个组件就成为 resizable。
// 2, 组件根据 Flexible 的 fit 和 flex 属性来实现大小变化。
// 3, flex 属性：是一个 int 值。将自身的 flex 因子与其他的比较，以决定自身占剩余空间的比例。
// 如果是 null 或者 0,那么 child 就是 inflexible 的并且由 child 自己决定自身的大小。
// 4, fit 属性：取值为枚举：FlexFit.tight, FlexFit.loose。
// 在 flex 属性不为 0 事，fit 决定 Flexible 的 widget 是否能够填充所有剩余空间。

// 自己的理解：
// 在 fit 为 FlexFit.loose 时，不管 flex 取值为什么，都是由 child 自己决定自己的大小。
// 在 flex 为 null 或者 0 时，不管 fit 取值是啥，都是由 child 自己决定自己的大小。
// 以下面的例子来说明：
// ===情况一===:
//  Flexible(
//    child: BlueBox(),
//    fit: FlexFit.tight,
//    flex: 1,
//  ),
//  Flexible(
//    child: BlueBox(),
//    fit: FlexFit.tight,
//    flex: 0,
//  ),
// 表示把多出来的空间总共分成(1 + 0) 份,第一个 Flexible 占据 1 / 1 的比例,就是全部占用了;
// 第二个 Flexible 占了 0 / 1 的比例,就是没有占用一点儿,它还是原来的大小.
// ===情况二===:
//  Flexible(
//    child: BlueBox(),
//    fit: FlexFit.tight,
//    flex: 2,
//  ),
//  Flexible(
//    child: BlueBox(),
//    fit: FlexFit.loose,
//    flex: 1,
//  ),
// 表示把多出来的空间总共分成了(2 + 1) = 3 份,第一个 Flexible 占据 2 / 3 的比例, 因为它是设置了 FlexBox.tight, 会填满给它分配的空间；
// 第二个 Flexible 占了 1 / 3 的比例, 但是因为它是设置了 FlexBox.tight, 不会填满给它分配的空间,还是原来的大小.
// ===情况三===:
// Flexible(
//   child: BlueBox(),
//   fit: FlexFit.tight,
//   flex: 2,
// ),
// Flexible(
//   child: BlueBox(),
//   fit: FlexFit.tight,
//   flex: 1,
// ),
// 与情况二相比,就是把第二个 Flexible 的 fit 属性改为了 FlexFit.tight, 所以它会填充满给它分配的空间.
class FlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flexible widget')),
      body: Container(
        color: Colors.grey,
        child: Row(
          children: [
            BlueBox(),
            Flexible(
              child: BlueBox(),
              fit: FlexFit.tight,
              flex: 1,
            ),
            Flexible(
              child: BlueBox(),
              fit: FlexFit.tight,
              flex: null,
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
