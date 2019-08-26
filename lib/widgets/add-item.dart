import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:simple_grocery/styling.dart';
import 'package:simple_grocery/models/item-list.dart';

class AddItemForm extends StatefulWidget {
  @override
  _AddItemFormState createState() => _AddItemFormState();
}

class _AddItemFormState extends State<AddItemForm> {
  String itemValue;
  bool isValidate = false;

  @override
  Widget build(BuildContext context) {
    var itemList = Provider.of<ItemList>(context);
    return Container(
      color: AppTheme.velato_darken,
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: AppTheme.polvere,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Add Item to buy',
              style: Theme.of(context).textTheme.headline,
            ),
            TextField(
              maxLength: 40,
              onChanged: (value) {
                itemValue = value;
              },
              style: Theme.of(context).textTheme.body2,
              autofocus: true,
              decoration: InputDecoration(
                errorText: isValidate ? 'Please enter a value' : null,
                focusedBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(
                      color: AppTheme.dark_grey,
                      width: 3,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: AppTheme.velato,
              onPressed: () {
                if (itemValue == null || itemValue.length == 0) {
                  setState(() {
                    isValidate = true;
                  });
                  return;
                }
                setState(() {
                  isValidate = false;
                });
                itemList.addItem(itemValue);
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Add'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.button,
                ),
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
