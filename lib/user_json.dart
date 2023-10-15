class UserJson {
  final int id;
  final String name;
  final String adress;
  final String phone;
  final String userName;
  final String email;

  UserJson(
      {required this.id,
      required this.name,
      required this.adress,
      required this.phone,
      required this.userName,
      required this.email});

  factory UserJson.fromJson(Map<String, dynamic> json) => UserJson(
      id: json["id"],
      name: json["name"],
      adress: json["adress"],
      phone: json["phone"],
      userName: json["userName"],
      email: json["email"]);
}
