import 'dart:convert';
import 'package:futter_architecture_cubit/data/user_json.dart';
import 'package:futter_architecture_cubit/domain/repositories/user_repository.dart';
import 'package:http/http.dart' as http;



class RestApiUsersRepository implements UsersRepository {
  @override
  Future<List<User>> getUsers() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);
    var list = jsonDecode(response.body) as List;
    return list.map((e) => User.fromJson(e).toDomain()).toList();
  }
}