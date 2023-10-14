import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_architecture_cubit/ui/widgets/user_card.dart';
import 'package:futter_architecture_cubit/ui/widgets/user_list_cubit.dart';
import 'package:futter_architecture_cubit/ui/widgets/user_list_state.dart';

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
            bloc: BlocProvider.of<UserListCubit>(context),
            builder: (context, state) {
              final userState = state as UserListState;
              return ListView(
                children: userState.users
                    .map((user) => UserCard(user: user))
                    .toList(),
              );
            }),
      ),
    );
  }
}
