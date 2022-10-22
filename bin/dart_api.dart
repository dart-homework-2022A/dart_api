import 'package:http/http.dart' as http;

void main() async {
  http.Response response = await http.get(
    Uri.parse('https://randomuser.me/api/'),
  );

  print(response.body);
}
