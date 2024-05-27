import 'dart:convert';

Category dataModelFromJson(String str) => Category.fromJson(json.decode(str));
String dataModelToJson(Category data) => json.encode(data.toJson());

class Category {
  final int id;
  final String category;
  final String pusername;

  Category({
    required this.id,
    required this.category,
    required this.pusername,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] ?? 0,
      category: json['category'] ?? '',
      pusername: json['pusername']?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'category': category,
        'pusername': pusername,
      };
}
