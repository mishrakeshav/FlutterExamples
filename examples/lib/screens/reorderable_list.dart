import 'package:flutter/material.dart';

class ReorderableListExample extends StatefulWidget {
  static String id = 'ReorderableListExample';
  @override
  _ReorderableListExampleState createState() => _ReorderableListExampleState();
}

class _ReorderableListExampleState extends State<ReorderableListExample> {
  final List<int> _items = List<int>.generate(50, (int index) => index);
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final oddItemColor = colorScheme.primary.withOpacity(0.05);
    final evenItemColor = colorScheme.primary.withOpacity(0.15);

    return Scaffold(
      appBar: AppBar(
        title: Text('Reorderable List View Example'),
      ),
      body: Container(
        child: ReorderableListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                key: Key('$index'),
                tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
                title: Text('Item ${_items[index]}'),
              );
            },
            itemCount: _items.length,
            onReorder: (oldKey, newKey) {
              print('$oldKey $newKey');
            }),
      ),
    );
  }
}
