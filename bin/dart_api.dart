import 'package:http/http.dart' as http;

void main() async {
  http.Response response = await http.get(
    Uri.parse('http://diyorbekmajidov.pythonanywhere.com/'),
  );

  print(response.body);
  print(response.statusCode);
}
