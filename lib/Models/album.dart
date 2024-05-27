import 'dart:convert';

Album dataModelFromJson(String str) => Album.fromJson(json.decode(str));
String dataModelToJson(Album data) => json.encode(data.toJson());

class Album {
  final int id;
  final String image;
  final String pusername; 

  Album({
    required this.id,
    required this.image,
    required this.pusername
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'] ?? 0,
      image: json['image'] ??'',
      pusername: json['pusername'] ??''
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'pusername': pusername
      };
}
