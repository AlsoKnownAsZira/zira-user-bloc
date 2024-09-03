import 'package:flutter/material.dart';


import 'package:user_management/pages/add/add.dart';
import 'package:user_management/pages/edit/edit.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALL USERS"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPage(),
                ),
              );
            },
            leading: CircleAvatar(
              child: Text("${index + 1}"),
            ),
            title: const Text("Name"),
            subtitle: const Text("Age"),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
