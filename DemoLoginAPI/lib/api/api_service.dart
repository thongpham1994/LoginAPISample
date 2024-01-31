import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/login_model.dart';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {

    //final response = await http.post(url, body: requestModel.toJson());

    final uri = Uri.parse('http://10.1.101.4:8179/');
    final headers = {'Content-Type': 'application/json'};
    Map<String, dynamic> body = requestModel.toJson();
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

    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}