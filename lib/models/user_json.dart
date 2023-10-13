 

class UserJson {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String address;
  final String website;

  UserJson({required this.id, required this.name, required this.email, required this.phone, required this.address, required this.website});

factory UserJson.fromjson(Map<String, dynamic> json) => UserJson(
  
  id: json['id'],
  name: json['name'],
  email: json['email'],
  phone: json['phone'],
  address: json['address'],
  website: json['website'],

  );


}

