
import 'package:futter_architecture_cubit/domain/entities/user.dart';
import 'package:futter_architecture_cubit/domain/repositories/user_repository.dart';

class MockUsersRepository implements UsersRepository {
  @override
  Future<List<User>> getUsers() async => [
        User(
          id: 123,
          name: 'name',
          username: 'username',
          email: 'email',
          phone: 'phone',
          website: 'website',
        )
      ];
}