import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:simple_grocery/models/item-list.dart';
import 'package:simple_grocery/widgets/item-widget.dart';

class ItemListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var itemList = Provider.of<ItemList>(context);

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ...itemList.items.map((item) => ItemWidget(item, (value) {
              itemList.toggleBought(item, value);
            }, () {
              itemList.deleteItem(item);
            }))
          ],
        ));
  }
}