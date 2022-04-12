import 'package:enum_to_string/enum_to_string.dart';

enum Role {
  manager,
  employee,
  controller
}

class UserModel {
  String id;
  String name;
  Role role;
  String username;
  String password;

  UserModel(this.id, this.name, this.role, this.username, this.password);

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "role": EnumToString.convertToString(role),
      "username": username,
      "password": password
    };
  }

  static UserModel fromJson(Map<String, dynamic> firebaseData) {
    Role? role = EnumToString.fromString([Role.employee, Role.manager, Role.controller], firebaseData['role']);
    return UserModel(firebaseData['id'], firebaseData['name'], role!, firebaseData['username'], firebaseData['password']);
  }
}