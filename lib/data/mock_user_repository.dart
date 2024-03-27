import 'package:futter_architecture_cubit/domin/entities/user.dart';
import 'package:futter_architecture_cubit/domin/repository/user_repository.dart';

class MockUserRepository implements UserRepository {
  @override
  Future<List<User>> getUsers() async => [
        User(
            id: '123'.compareTo('123'),
            name: 'name',
            phone: 'phone',
            email: 'email',
            address: 'address'),
      ];
}
