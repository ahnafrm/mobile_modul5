import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHelper {
  static Future<Map<String, dynamic>> registerUser(
      String email, String password) async {
    final response = await http.post(
      Uri.parse('https://reqres.in/api/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      return responseData;
    } else if (response.statusCode == 400) {
      throw Exception('Gagal mendaftarkan pengguna');
    } else {
      print(response.statusCode);
      throw Exception('Gagal mendaftarkan');
    }
  }
}
