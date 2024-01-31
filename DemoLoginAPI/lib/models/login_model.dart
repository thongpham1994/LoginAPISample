import 'dart:ffi';

class LoginResponseModel {
  final String? data;
  final bool? is_success;
  final String? err_code;
  final String? err_msg;

  LoginResponseModel({this.data, this.err_code, this.err_msg, this.is_success});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      data: json["data"] != null ? json["data"] : "",
      err_code: json["err_code"] != null ? json["err_code"] : "",
      err_msg: json["err_msg"] != null ? json["err_msg"] : "",
      is_success: json["is_success"] != null ? json["is_success"] : false,

    );
  }
}

class LoginRequestModel {
  String? Username;
  String? Password;
  bool? VerifyNewVersion;

  LoginRequestModel({
    this.Username,
    this.Password,
    this.VerifyNewVersion
  });


  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'Username': (Username ?? '').trim(),
      'Password': (Password ?? '').trim(),
      'VerifyNewVersion': true
    };

    return map;
  }
}