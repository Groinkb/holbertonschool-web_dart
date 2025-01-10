import '0-util.dart';

Future<void> usersCount() async {
  int count = await fetchUsersCount(); //une fois que future est complétée
  print(count);
}
