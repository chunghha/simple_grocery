import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'No more items left!',
            style: Theme.of(context).textTheme.body1,
          ),
          Text(
            'Time to add some more!',
            style: Theme.of(context).textTheme.body2,
            ),
        ],
      ),
    );
  }
}
