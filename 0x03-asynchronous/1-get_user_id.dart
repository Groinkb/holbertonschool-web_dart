import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  {
    String data = await fetchUserData();
    Map<String, dynamic> json = jsonDecode(data); //convert json code to objet flutter
    return json['id'];
  }
}
