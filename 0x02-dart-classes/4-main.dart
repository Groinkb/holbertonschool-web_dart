import '4-mutables.dart';

void main() {
  final password = Password(password: "Passwordecode");
  print(password.isValid());
  print(password.toString());
  password.password = "Cathy4321";
  print(password.isValid());
  print(password.toString());
}
