import 'package:futter_architecture_cubit/user_json.dart';



class UserListState {
  final List<UserJson> users;
  final bool isLoading ;
  const UserListState({required this.users, required this.isLoading});


// It's use for future if you show empty usersState
  factory UserListState.empty() => const UserListState(users: [],isLoading: false);

// CopyWith function create for changes new State when some updates elase all old state is same  
UserListState copyWith({List<UserJson>? users, bool? isLoading}) => UserListState(users: users ?? this.users,isLoading: isLoading ?? this.isLoading);

}
