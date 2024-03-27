import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_architecture_cubit/domain/repositories/user_repository.dart';
import 'package:futter_architecture_cubit/ui/user_cubit/user_state.dart';



class UsersCubit extends Cubit<UsersState> {
  final UsersRepository usersRepository;

  UsersCubit(this.usersRepository) : super(UsersState.empty());

  Future<void> fetchUsers() async {
    emit(state.copyWith(isLoading: true));
    final users = await usersRepository.getUsers();
    emit(state.copyWith(users: users, isLoading: false));
  }
}