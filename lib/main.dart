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

          height: 100,
          width: 100,
          alignment: Alignment.center,
          child: Text(
            'i am a box',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          //
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [Colors.blue, Colors.black38]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                )
              ]),
        ),
      ),
    );
  }
}
