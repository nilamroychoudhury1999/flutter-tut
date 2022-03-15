import 'package:flutter/material.dart';
import 'package:tut/pages/login_page.dart';
import 'package:tut/pages/nav.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: nav(),
    routes: {
      LoginPage.routeName: (context) => LoginPage(),
      HomePage.routeName: (context) => HomePage(),
    },
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
