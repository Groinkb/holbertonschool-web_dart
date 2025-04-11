import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final characters = data['results'] as List<dynamic>;

      for (final character in characters) {
        print(character['name']);
      }
    } else {
      print('Failed to load characters. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('error caught: $error');
  }
}
