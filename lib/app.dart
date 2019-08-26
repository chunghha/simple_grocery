import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:simple_grocery/styling.dart';
import 'package:simple_grocery/models/item-list.dart';
import 'package:simple_grocery/widgets/home.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ItemList>(
      builder: (context) => ItemList(),
      child: MaterialApp(
          title: 'Simple Grocery',
          theme: ThemeData(
            primaryColor: AppTheme.primaryColor,
            accentColor: AppTheme.accentColor,
            scaffoldBackgroundColor: AppTheme.notWhite,
            canvasColor: AppTheme.notWhite,
            textTheme: AppTheme.textTheme,
          ),
          home: Home()),
    );
  }
}

