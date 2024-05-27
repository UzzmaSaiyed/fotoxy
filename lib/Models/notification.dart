import 'dart:convert';

Notification dataModelFromJson(String str) => Notification.fromJson(json.decode(str));
String dataModelToJson(Notification data) => json.encode(data.toJson());

class Notification {
  int nId;
  String toPhotographer;
  String toUser;
  String pusername;
  String username;

  Notification({
    required this.nId,
    required this.toPhotographer,
    required this.toUser,
    required this.pusername,
    required this.username,
  });

  factory Notification.fromJson(Map<String, dynamic> json) {
  return Notification(
    nId: json['n_id'] ?? 0,
    toPhotographer: json['to_photographer'] ?? '',
    toUser: json['to_user'] ?? '',
    pusername: json['pusername'] ?? '',
    username: json['username'] ?? '',
  );
}


  Map<String, dynamic> toJson() {
    return {
      'n_id': nId,
      'to_photographer': toPhotographer,
      'to_user': toUser,
      'pusername': pusername,
      'username': username,
    };
  }
}
