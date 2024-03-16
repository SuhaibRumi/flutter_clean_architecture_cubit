import 'dart:convert';
import 'package:futter_architecture_cubit/data/user_json.dart';
import 'package:futter_architecture_cubit/domin/entities/user.dart';
import 'package:futter_architecture_cubit/domin/repository/user_repository.dart';
import 'package:http/http.dart' as http;

class RestApiUsersRepository implements UserRepository {
  @override
  Future<List<User>> getUsers() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);
    var list = jsonDecode(response.body) as List;
    return list.map((e) => UserJson.fromJson(e).toDomin()).toList();
  }
}
