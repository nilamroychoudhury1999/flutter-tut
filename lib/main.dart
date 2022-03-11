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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          color: Colors.blue,
          height: 100,
          width: 100,
          alignment: Alignment.center,
          child: Text('i am a box'),
        ),
      ),
    );
  }
}
