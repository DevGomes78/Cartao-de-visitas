import 'package:flutter/material.dart';
import 'package:projeto9/models/user_models.dart';
import 'package:projeto9/repository/user.dart';

class ListUser extends StatefulWidget {
  ListUser({Key? key}) : super(key: key);

  @override
  State<ListUser> createState() => _ListUserState();
}

class _ListUserState extends State<ListUser> {
List<User>? user;

@override
void initState() {
    super.initState();
    getUser().then((map){
      user=map;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Api User'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: user!.length,
            itemBuilder: (context, index) {
              var lista = user![index];
              return Card(
                color: Colors.amberAccent,
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(lista.id.toString()),
                  ),
                  title: Text(lista.name.toString()),
                  subtitle: Text(lista.email.toString()),
                ),
              );
            }),
      ),
    );
  }
}
