import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListWheelScrollViewWidget extends StatelessWidget {
  final List<int> _items = List<int>.generate(50, (int index) => index);
  List<ListTile> buildItemWidgets() {
    List<ListTile> widgets = [];
    for (var item in _items) {
      widgets.add(
        ListTile(
          // shape: ShapeBorder.lerp(a, b, t),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Item $item'),
          ),
          tileColor: item % 2 == 0 ? Colors.blueAccent : Colors.lightBlueAccent,
        ),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      perspective: 0.005,
      itemExtent: 300,
      useMagnifier: true,
      diameterRatio: 10.0,
      children: buildItemWidgets(),
    );
  }
}
