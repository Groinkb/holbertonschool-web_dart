import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  final userData = await fetchUserData();
  final userMap = json.decode(userData);
  return userMap['id'];
}
