import 'package:http/http.dart' as http;

void main() async {
  http.Response response = await http.get(
    Uri.parse('https://randomuser.me/api/'),
  );

  String raw = response.body;
  print(raw.length);
}
