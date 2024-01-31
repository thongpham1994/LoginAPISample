import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/login_model.dart';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    //final response = await http.post(url, body: requestModel.toJson());

    final uri = Uri.parse('http://10.1.101.4:8179/account/login');
    final headers = {'Content-Type': 'application/json'};
    requestModel.Username = 'hsg004roise';
    requestModel.Password = 'a123456a';
    Map<String, dynamic> body = requestModel.toJson();
    print("========> ${body.toString()}");
    print("========> ${body.toString()}");
    String jsonBody = json.encode(body);
    final encoding = Encoding.getByName('utf-8');

    final response = await http.post(
      uri,
      headers: headers,
      body: jsonBody,
      encoding: encoding,
    );

    int statusCode = response.statusCode;
    String responseBody = response.body;
    print("========> ${requestModel.Username.toString()}");
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
