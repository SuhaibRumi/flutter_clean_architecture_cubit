

import 'package:futter_architecture_cubit/data/user_json.dart';

class UsersState {
  final List<User> users;
  final bool isLoading;

  const UsersState({required this.users, required this.isLoading});

  factory UsersState.empty() => const UsersState(
        users: [],
        isLoading: false,
      );

  UsersState copyWith({
    List<User>? users,
    bool? isLoading,
  }) =>
      UsersState(
        users: users ?? this.users,
        isLoading: isLoading ?? this.isLoading,
      );
}