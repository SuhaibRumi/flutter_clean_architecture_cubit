import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_architecture_cubit/ui/user_cubit/user_cubit.dart';
import 'package:futter_architecture_cubit/ui/user_cubit/user_state.dart';
import 'package:futter_architecture_cubit/widgets/user_card.dart';


class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List Page'),
      ),
      body: Center(
        child: BlocBuilder(
            bloc: BlocProvider.of<UsersCubit>(context),
            builder: (context, state) {
              final userState = state as UsersState;
              return userState.isLoading
                  ? const CircularProgressIndicator()
                  : ListView(
                      children: userState.users
                          .map((user) => UserCard(user: user))
                          .toList(),
                    );
            }),
      ),
    );
  }
}
