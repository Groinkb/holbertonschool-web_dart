import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;
  String? _user_password;
  Password _passwordValidator = Password();

  User({this.id, this.name, this.age, this.height, String? user_password}) {
    _user_password = user_password;
    _passwordValidator.password = user_password;
  }

  // Getter for user_password
  String? get user_password {
    return _user_password;
  }

  // Setter for user_password
  set user_password(String? value) {
    _user_password = value;
    _passwordValidator.password = value;
  }

  @override
  bool isValid() {
    return _passwordValidator.isValid();
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height'],
        user_password: userJson['user_password']);
  }

  @override
  String toString() {
    return "User(id : ${id ?? ''} ,name: ${name ?? ''}, age: ${age ?? ''}, height: ${height ?? ''}, Password: ${isValid()})";
  }
}
