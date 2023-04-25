import 'package:flutter/material.dart';
import 'package:placeholder_clean/domain/models/user.dart';
import 'package:placeholder_clean/domain/repositories/user_interface_reapository.dart';

class UserController extends ChangeNotifier {
  final UserInterfaceInterface _userService;
  UserController({required UserInterfaceInterface userService})
      : _userService = userService;

  Future<List<User>> getUsers() {
    return _userService.getUsers();
  }
}
