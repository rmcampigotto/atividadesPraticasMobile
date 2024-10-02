import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final List<String> items;

  const ItemList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(items[index]),
          ),
        );
      },
    );
  }
}
