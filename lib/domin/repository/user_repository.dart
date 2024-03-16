import 'package:futter_architecture_cubit/domin/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getUsers();
}
