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
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Nilam Roychoudhury'),
                accountEmail: Text('g.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.etimg.com/thumb/msid-51765842,width-300,imgsize-59606,resizemode-4/whatever-promised-needs-to-be-met-m-s-dhoni-on-amrapali-issue.jpg'),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('nilam'),
              subtitle: Text('dev'),
              trailing: Icon(Icons.edit),
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('nilam'),
              subtitle: Text('dev'),
              trailing: Icon(Icons.edit),
              onLongPress: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('nilam'),
              subtitle: Text('dev'),
              trailing: Icon(Icons.edit),
              onLongPress: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.edit,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
