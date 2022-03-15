import 'package:flutter/material.dart';
import 'home_page.dart';
import 'info.dart';

var _pageData = [
  HomePage(),
  info(),
];
int _selectedItem = 0;

class nav extends StatefulWidget {
  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pageData[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'INFO')
        ],
        currentIndex: _selectedItem,
        onTap: (setValue) {
          setState(() {
            _selectedItem = setValue;
          });
        },
      ),
    );
  }
}
