import '../../models/user_json.dart';

class UserListState {
  final List<UserJson> users;
  const UserListState({required this.users});


// It's use for future if you show empty usersState
  factory UserListState.empty() => const UserListState(users: []);

// CopyWith function create for changes new State when some updates elase all old state is same  
UserListState copyWith({List<UserJson>? users}) => UserListState(users: users ?? this.users);

}
