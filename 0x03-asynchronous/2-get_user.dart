import '2-util.dart';

Future<void> getUser() async {
  try {
    String data = await fetchUser(); //fetch user data : imprime data à l'issu
    print(data);
  } catch (e) {
    print('error caught: $e');
  }
}