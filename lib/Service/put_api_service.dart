import 'dart:convert';

import '../Model/update_model.dart';
import 'package:http/http.dart' as http;

class PutApiService {
  Future<UpdateModel?> updateData(String name, String job) async {
    var url = Uri.parse("https://reqres.in/api/users/2");
    var response = await http.put(url, body: {
      "name": name,
      "job": job,
    });
    try {
      if (response.statusCode == 200) {
        UpdateModel model = UpdateModel.fromJson(jsonDecode(response.body));
        print(response.body);
        print("Data Update Successfully");
        return model;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}

// {
// "name": "morpheus",
// "job": "zion resident"
// }
