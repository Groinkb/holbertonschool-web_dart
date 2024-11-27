import '1-usertojson.dart';

void main() {
  final user = User(name: "Michel", age: 25, height: 1.86);
  print(user.toJson());
}
