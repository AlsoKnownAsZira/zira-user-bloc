import 'package:flutter/material.dart';
import '../bloc/export.dart';
import 'package:user_management/pages/add/add.dart';
import 'package:user_management/pages/edit/edit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userB = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALL USERS"),
      ),
      //wrap listview builder dengan blocBuilder
      body: BlocBuilder<UserBloc, UserState>(
        bloc:userB,
        builder: (context, state) {
          if(state.allUser.isEmpty){
            return const Center(
              child: Text("No User Found"),
            );
          }
          return ListView.builder(
            itemCount: state.allUser.length,
            itemBuilder: (context, index) {
              User user = state.allUser[index];
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
                title:  Text("${user.name}"),
                subtitle:  Text("${user.age}"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                ),
              );
            },
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
