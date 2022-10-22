import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  http.Response response = await http.get(
    Uri.parse('https://randomuser.me/api/'),
  );

  String raw = response.body;

  Map jsonData = jsonDecode(raw);
  Map info = jsonData['info'];
  Map user = jsonData['results'][0];
  Map name = user['name'];
  print(name['first']);
  print(name['last']);
}
