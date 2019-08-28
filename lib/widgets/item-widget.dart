import 'package:flutter/material.dart';

import 'package:simple_grocery/models/item.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  final Function toggleBought;
  final Function deleteItem;

  ItemWidget(this.item, this.toggleBought, this.deleteItem);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(color: Theme.of(context).accentColor),
      key: Key(item.name),
      onDismissed: (direction) {
        deleteItem();
      },
      child: ListTile(
        title: Text(
          item.name,
          style: TextStyle(
            decoration: item.isBought ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
            value: item.isBought,
            onChanged: (value) {
              toggleBought(value);
            }),
      ),
    );
  }
}
