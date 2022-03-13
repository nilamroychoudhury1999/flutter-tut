import 'package:flutter/material.dart';
import 'package:tut/pages/login_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    routes: {
      LoginPage.routeName: (context) => LoginPage(),
      HomePage.routeName: (context) => HomePage(),
    },
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
