import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Simple',
              ),
            ),
            body: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(2.0),
                  child:
                      RaisedButton(onPressed: () {
                        setState(() {
                          _products.add('New');
                        });
                      }, child: Text('Press me')),
                ),
                Column(
                    children: _products
                        .map(
                          (element) => Card(
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'assets/food.jpg',
                                  width: 300,
                                  height: 150,
                                ),
                                Text(element)
                              ],
                            ),
                          ),
                        )
                        .toList())
              ],
            )));
  }
}
