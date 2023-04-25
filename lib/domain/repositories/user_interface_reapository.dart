import 'package:placeholder_clean/domain/models/user.dart';

abstract class UserInterfaceInterface {
  Future<List<User>> getUsers();
}
