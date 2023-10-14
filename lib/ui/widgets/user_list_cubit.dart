import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/user_list_state.dart';
import 'package:http/http.dart' as http;
import '../../models/user_json.dart';

class UserListCubit extends Cubit<UserListState> {
  UserListCubit() : super(UserListState.empty());

  Future<void> fatchUsers() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);
    var list = jsonDecode(response.body) as List;
    final users = list.map((e) => UserJson.fromJson(e)).toList();

    emit(state.copyWith(users: users));
  }
}
