import 'dart:ffi';

class LoginResponseModel {
  final CustomerData? data;
  final bool? is_success;
  final String? err_code;
  final String? err_msg;

  LoginResponseModel({this.data, this.err_code, this.err_msg, this.is_success});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    print("-----------< ${json}");
    print("-----------< ${json["data"]}");
    return LoginResponseModel(
      data: json["data"] != null
          ? CustomerData.fromJson(json["data"])
          : CustomerData(
              customerId: 1,
              headCId: 1,
              branchCId: 1,
              agencyId: 1,
              channelId: 1,
              deliveryShopId: 1,
              customerType: 1,
              customerRole: 1,
              manageCompany: 1,
              unionId: 1,
              username: "1",
              nick: "1",
              name: "1",
              mobile: "1",
              sex: 1,
              headImgUrl: "headImgUrl",
              location: "location",
              status: 1,
              staffId: 1,
              isNotRoleCustomer: true,
              isSwitchAgency: true,
              agencyIdDefault: 1,
            ),
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

  LoginRequestModel({this.Username, this.Password, this.VerifyNewVersion});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'Username': (Username ?? '').trim(),
      'Password': (Password ?? '').trim(),
      'VerifyNewVersion': true
    };

    return map;
  }
}

class CustomerData {
  int customerId;
  int headCId;
  int branchCId;
  int agencyId;
  int channelId;
  int deliveryShopId;
  int customerType;
  int customerRole;
  int manageCompany;
  dynamic unionId;
  String username;
  String nick;
  String name;
  String mobile;
  int sex;
  String headImgUrl;
  dynamic location;
  int status;
  int staffId;
  bool isNotRoleCustomer;
  bool isSwitchAgency;
  int agencyIdDefault;

  CustomerData({
    required this.customerId,
    required this.headCId,
    required this.branchCId,
    required this.agencyId,
    required this.channelId,
    required this.deliveryShopId,
    required this.customerType,
    required this.customerRole,
    required this.manageCompany,
    required this.unionId,
    required this.username,
    required this.nick,
    required this.name,
    required this.mobile,
    required this.sex,
    required this.headImgUrl,
    required this.location,
    required this.status,
    required this.staffId,
    required this.isNotRoleCustomer,
    required this.isSwitchAgency,
    required this.agencyIdDefault,
  });

  factory CustomerData.fromJson(Map<String, dynamic> json) {
    return CustomerData(
      customerId: json['customerId'],
      headCId: json['headCId'],
      branchCId: json['branchCId'],
      agencyId: json['agencyId'],
      channelId: json['channelId'],
      deliveryShopId: json['deliveryShopId'],
      customerType: json['customerType'],
      customerRole: json['customerRole'],
      manageCompany: json['manageCompany'],
      unionId: json['unionId'],
      username: json['username'],
      nick: json['nick'],
      name: json['name'],
      mobile: json['mobile'],
      sex: json['sex'],
      headImgUrl: json['headImgUrl'],
      location: json['location'],
      status: json['status'],
      staffId: json['staffId'],
      isNotRoleCustomer: json['isNotRoleCustomer'],
      isSwitchAgency: json['isSwitchAgency'],
      agencyIdDefault: json['agencyIdDefault'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'customerId': customerId,
      'headCId': headCId,
      'branchCId': branchCId,
      'agencyId': agencyId,
      'channelId': channelId,
      'deliveryShopId': deliveryShopId,
      'customerType': customerType,
      'customerRole': customerRole,
      'manageCompany': manageCompany,
      'unionId': unionId,
      'username': username,
      'nick': nick,
      'name': name,
      'mobile': mobile,
      'sex': sex,
      'headImgUrl': headImgUrl,
      'location': location,
      'status': status,
      'staffId': staffId,
      'isNotRoleCustomer': isNotRoleCustomer,
      'isSwitchAgency': isSwitchAgency,
      'agencyIdDefault': agencyIdDefault,
    };
  }
}
