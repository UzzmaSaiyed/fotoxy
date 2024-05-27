import 'dart:convert';


Photographer dataModelFromJson(String str) => Photographer.fromJson(json.decode(str));
String dataModelToJson(Photographer data) => json.encode(data.toJson());

class Photographer {
  String pusername;
  String firstname;
  String lastname;
  int mobileNo;
  String streetname;
  String city;
  int pincode;
  String state;
  String email;
  String document;
  String password;
  String other;
  DateTime submittedAt;
  String approvalStatus;
  DateTime lastLogin;
  int id;


  Photographer({
    required this.pusername,
    required this.firstname,
    required this.lastname,
    required this.mobileNo,
    required this.streetname,
    required this.city,
    required this.pincode,
    required this.state,
    required this.email,
    required this.document, 
    required this.password,
    required this.other,
    required this.submittedAt,
    required this.approvalStatus,
    required this.lastLogin,
    required this.id,
    
  });

  factory Photographer.fromJson(Map<String, dynamic> json) {
  return Photographer(
    pusername: json['pusername'] ?? '',
    firstname: json['firstname'] ?? '',
    lastname: json['lastname'] ?? '',
    mobileNo: json['mobile_no'] ?? 0,
    streetname: json['streetname'] ?? '',
    city: json['city'] ?? '',
    pincode: json['pincode'] ?? 0,
    state: json['state'] ?? '',
    email: json['email'] ?? '',
    document: json['document'] ?? '',
    password: json['password'] ?? '',
    other: json['other'] ?? '',
    submittedAt: json['submitted_at'] != null ? DateTime.parse(json['submitted_at']) : DateTime.now(),
    approvalStatus: json['approval_status'] ?? '',
    lastLogin: json['last_login'] != null ? DateTime.parse(json['last_login']) : DateTime.now(),
    id: json['id'] ?? 0
  );
}


  Map<String, dynamic> toJson() => {
        'pusername': pusername,
        'firstname': firstname,
        'lastname': lastname,
        'mobile_no': mobileNo,
        'streetname': streetname,
        'city': city,
        'pincode': pincode,
        'state': state,
        'email': email,
        'document': document,
        'password': password,
        'other': other,
        'submitted_at': submittedAt.toIso8601String(),
        'approval_status': approvalStatus,
        'last_login': lastLogin.toIso8601String(),
        'id': id,
      };
}
// document remaining