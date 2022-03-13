import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var textP = "change my name";
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aesome App'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://th.bing.com/th/id/OIP.wZ3VZOigrz2TJmCIurX_-QHaFj?pid=ImgDet&rs=1',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  textP,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "enter your name",
                        labelText: "name"),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          textP = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
