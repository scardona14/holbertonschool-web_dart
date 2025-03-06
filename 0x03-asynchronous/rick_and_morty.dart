import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final responce = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (responce.statusCode == 200) {
      final data = jsonDecode(responce.body);

      if (data['results'] is List) {
        for (var character in date['results']) {
          print('$character['name']}');
        }
      } else {
        print('Invalid API response format');
      }
    } else {
      print('Failed to fetch data. Status code: ${responce.statusCode}');
    }
  } catch (error) {
    print('Error caught: $error');
  }
}