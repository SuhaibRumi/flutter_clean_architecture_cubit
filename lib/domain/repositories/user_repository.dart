
import 'package:futter_architecture_cubit/data/user_json.dart';

abstract class UsersRepository {
  Future<List<User>> getUsers();
}