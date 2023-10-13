import 'package:flutter/material.dart';
import 'package:futter_architecture_cubit/models/user_json.dart';
import 'package:futter_architecture_cubit/ui/widgets/user_card.dart';


class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  final List<UserJson> users = [];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: 
          users.map((user) => UserCard(user: user)).toList(),
        
        
      ),
    );
  }
}
