// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
// User Model
//1 datamodel per dart page

User dataModelFromJson(String str) => User.fromJson(json.decode(str));
String dataModelToJson(User data) => json.encode(data.toJson());

class User {
  final String username;
  final String firstname;
  final String lastname;
  final int mobile_no;
  final String email;
  final String password;
  final int experience;
  final String other;
  DateTime submittedAt;
  String approvalStatus;
  int id;
  DateTime lastLogin;
  String getEmailFieldName;

  User({
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.mobile_no,
    required this.email,
    required this.password,
    required this.experience,
    required this.other,
    required this.submittedAt,
    required this.approvalStatus,
    required this.id,
    required this.lastLogin,
    required this.getEmailFieldName,

  });

  // Factory method to create a User object from a JSON object
  factory User.fromJson(Map<String, dynamic> json) {
     return User(
    username: json['username'] ?? '',
    firstname: json['firstname'] ?? '',
    lastname: json['lastname'] ?? '',
    mobile_no: json['mobile_no'] ?? 0,
    email: json['email'] ?? '',
    password: json['password'] ?? '',
    experience: json['experience'] ?? 0,
    other: json['other'] ?? '',
    submittedAt: json['submitted_at'] != null ? DateTime.parse(json['submitted_at']) : DateTime.now(),
    approvalStatus: json['approval_status'] ?? '',
    id: json['id'] ?? 0,
    lastLogin: json['last_login'] != null ? DateTime.parse(json['last_login']) : DateTime.now(),
    getEmailFieldName: json['get_email_field_name'] ?? '',
  );
  }

  // Method to convert a User object to a JSON object
  Map<String, dynamic> toJson() => {
        'username': username,
        'firstname': firstname,
        'lastname': lastname,
        'mobile_no': mobile_no,
        'email': email,
        'password': password,
        'experience': experience,
        'other': other,
        'submitted_at': submittedAt.toIso8601String(),
        'approval_status': approvalStatus,
        'id': id,
        'last_login': lastLogin.toIso8601String(),
        'get_email_field_name': getEmailFieldName,
      };
}

