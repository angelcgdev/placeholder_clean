import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:placeholder_clean/domain/models/user.dart';
import 'package:placeholder_clean/domain/repositories/user_interface_reapository.dart';
import 'package:http/http.dart' as http;

class UserInterfaceInterfaceImpl implements UserInterfaceInterface {
  @override
  Future<List<User>> getUsers() async {
    const domain = 'jsonplaceholder.typicode.com';
    const path = 'users';
    final url = Uri.https(domain, path);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List;
      return data.map((e) => User.fromObject(e)).toList();
    }
    throw ErrorDescription('something went wrong');
  }
}
