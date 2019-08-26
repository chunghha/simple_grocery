import 'package:flutter/material.dart';

import 'package:simple_grocery/models/item.dart';

class ItemList extends ChangeNotifier {
  List<Item> _items;

  ItemList() {
    _items = List<Item>();
  }

  List<Item> get items {
    return _items;
  }

  void addItem(String name) {
    _items.add(Item(name: name, isBought: false));
    notifyListeners();
  }

  void toggleBought(Item item, bool value) {
    item.isBought = value;
    notifyListeners();
  }

  void deleteItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }
}