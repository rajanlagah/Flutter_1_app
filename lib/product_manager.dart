import 'package:flutter/material.dart';

import './products.dart';

class ProductsManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductsManager> {
  final List<String> _products = ['Food tester'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(2.0),
          child: RaisedButton(
              onPressed: () {
                setState(() {
                  _products.add('New');
                });
              },
              child: Text('Press me')),
        ),
        Products(_products),
      ],
    );
  }
}
