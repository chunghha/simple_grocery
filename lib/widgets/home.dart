import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:simple_grocery/styling.dart';
import 'package:simple_grocery/models/item-list.dart';
import 'package:simple_grocery/widgets/add-item.dart';
import 'package:simple_grocery/widgets/empty-state.dart';
import 'package:simple_grocery/widgets/item-list-widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var itemList = Provider.of<ItemList>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => showModalBottomSheet(
            context: context,
            builder: (context) => AddItemForm()
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              color: AppTheme.nord6,
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Text(
                    'Grocery',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  SizedBox(height: 5),
                  Text(
                    itemList.items.length > 0
                        ? "${itemList.items.length} Items"
                        : "No items",
                    style: Theme.of(context).textTheme.headline,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: AppTheme.nord6,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.nord4,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: itemList.items.length == 0
                      ? EmptyStateWidget()
                      : ItemListWidget(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
