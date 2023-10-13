// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class UserListCunbit extends Cubit<UserListSatare> {
//   UserListCubit(super.initialState);

//   Future<void> fatchUsers() async {
//     var url = Uri.parse("'https://jsonplaceholder.typicode.com/users");
//     var response = await http.get(url);
//     var list = jsonDecode(response.body) as List;
//     final users = list.map((e) => UserJson.fromJson(e)).toList();
//     emit(state.copyWith(users: users));

//   }
// }
