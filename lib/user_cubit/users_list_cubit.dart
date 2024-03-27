import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_architecture_cubit/domin/repository/user_repository.dart';
import 'package:futter_architecture_cubit/user_cubit/users_list_state.dart';

class UserListCubit extends Cubit<UserListState> {
  final UserRepository userRepository;

  UserListCubit(this.userRepository) : super(UserListState.empty());

  Future<void> fatchUsers() async {
    emit(state.copyWith(isLoading: true));
    final users = await userRepository.getUsers();
    emit(state.copyWith(users: users, isLoading: false));
  }
}
