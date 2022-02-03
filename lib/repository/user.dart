import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:projeto9/models/user_models.dart';

Future<List<User>> getUser() async {

    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    List<User> listUser = [];
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var decodeJson = jsonDecode(response.body);
      decodeJson.forEach((item) => listUser.add(User.fromJson(item)));
      return listUser;
    } else {
      throw Exception('erro ');
    }
}