import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({
    Key? key,
    required this.textP,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String textP;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
