import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD USER"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: "Age",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text("ADD USER"),
          ),
        ],
      ),
    );
  }
}
