import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_architecture_cubit/user_json.dart';
import 'package:futter_architecture_cubit/user_list_state.dart';

import 'package:http/http.dart' as http;

class UserListCubit extends Cubit<UserListState> {
  UserListCubit() : super(UserListState.empty());

  Future<void> fatchUsers() async {
    emit(state.copyWith(isLoading: true));
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);
    var list = jsonDecode(response.body) as List;
    final users = list.map((e) => UserJson.fromJson(e)).toList();

    emit(state.copyWith(users: users,isLoading: false));
  }
}
