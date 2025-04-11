import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final userMap = json.decode(userData);
    return 'Hello ${userMap['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final credentials = await checkCredentials();
    print('There is a user: $credentials');

    if (credentials) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
