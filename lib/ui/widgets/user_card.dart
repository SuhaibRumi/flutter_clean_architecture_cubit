import 'package:flutter/material.dart';
import 'package:futter_architecture_cubit/domin/entities/user.dart';
import 'package:futter_architecture_cubit/utils/colors.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: kBoxShadowColor,
            offset: Offset(0.0, 2.0),
          )
        ],
      ),
      child: ListTile(
        title: Text(
          user.name,
          style: const TextStyle(
              color: kDarkCardColor, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.email,
              style: const TextStyle(
                color: kGreyColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              user.phone,
              style: const TextStyle(
                color: kGreyColor,
              ),
            ),
          ],
        ),
        leading: CircleAvatar(
          radius: 25,
          child: Text(
            user.name[0],
          ),
        ),
      ),
    );
  }
}
