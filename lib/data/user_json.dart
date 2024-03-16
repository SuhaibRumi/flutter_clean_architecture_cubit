import 'package:futter_architecture_cubit/domin/entities/user.dart';

class UserJson {
  final int id;
  final String name;
  final String address;
  final String phone;

  final String email;

  UserJson(
      {required this.id,
      required this.name,
      required this.address,
      required this.phone,
      required this.email});

  factory UserJson.fromJson(Map<String, dynamic> json) => UserJson(
      id: json["id"],
      name: json["name"],
      address: json['address'] != null ? json['address']['street'] : '',
      phone: json["phone"],
      email: json["email"]);

  User toDomin() => User(
        id: id,
        name: name,
        address: address,
        phone: phone,
        email: email,
      );
}
