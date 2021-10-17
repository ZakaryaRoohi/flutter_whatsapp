import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthService{

  Future<Map> sendDataToLogin(Map body) async {
    var url = Uri.parse('http://roocket.org/api/login');

    final response = await http
        .post(url, body: body);

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    var responseBody = json.decode(response.body);
    return responseBody;

    // print(json.decode(response.body)['data']);
    // print(await http.read(Uri.parse('https://example.com/foobar.txt')));
  }


}