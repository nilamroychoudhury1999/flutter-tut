import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tut/pages/home_page.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(''),
            SingleChildScrollView(
                child: Form(
              key: formkey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _usernameController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (s) {},
                    decoration: InputDecoration(
                        hintText: "Enter email", labelText: "Username"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passordController,
                    keyboardType: TextInputType.text,
                    validator: (s) {},
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.routeName);
                    },
                    child: Text("login"),
                    color: Colors.orange,
                    textColor: Colors.white,
                  )
                ],
              ),
            )),
          ],
        ));
  }
}
