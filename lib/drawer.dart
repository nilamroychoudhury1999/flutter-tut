import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('Nilam Roychoudhury'),
              accountEmail: Text('g.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2017/02/17/549266-ms-dhoni-1pti.jpg'),
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
    );
  }
}
