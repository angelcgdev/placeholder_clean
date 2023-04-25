// import 'package:placeholder_clean/domain/models/address.dart';
// import 'package:placeholder_clean/domain/models/company.dart';

class User {
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    // required this.address,
    required this.phone,
    required this.website,
    // required this.company,
  });

  int id;
  String name;
  String username;
  String email;
  // Address address;
  String phone;
  String website;
  // Company company;

  factory User.fromObject(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      // address: json['address'],
      phone: json['phone'],
      website: json['website'],
      // company: json['company'],
    );
  }
}
