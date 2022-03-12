import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aesome App'),
        ),
        body: Container(
          color: Colors.green,
          height: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                color: Colors.black,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 100,
                width: 100,
                alignment: Alignment.center,
                color: Colors.blue,
              ),
            ],
          ),
        ));
  }
}
