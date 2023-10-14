import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../models/user_json.dart';

class UserCard extends StatelessWidget {
  final UserJson user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(user.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.email),
            Text(user.phone),
            Text(user.website),
          ],
        ),
        leading: CircleAvatar(
          radius: 25,
          child: Text(user.name[0]),
        ),
      ),
    );
  }
}
