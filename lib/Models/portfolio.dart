import 'dart:convert';

Portfolio dataModelFromJson(String str) => Portfolio.fromJson(json.decode(str));
String dataModelToJson(Portfolio data) => json.encode(data.toJson());

class Portfolio {
  final int portfolioId;
  final String equipment;
  final String overview;
  final int experience;
  final int startingPrice;
  final String skills;
  final String languageKnown;
  final String pusername;
  final DateTime submittedAt;
  final String approvalStatus;

  Portfolio({
    required this.portfolioId,
    required this.equipment,
    required this.overview,
    required this.experience,
    required this.startingPrice,
    required this.skills,
    required this.languageKnown,
    required this.pusername,
    required this.submittedAt,
    required this.approvalStatus,
  });

  factory Portfolio.fromJson(Map<String, dynamic> json) {
  return Portfolio(
    portfolioId: json['portfolio_id'] ?? 0,
    equipment: json['equipment'] ?? '',
    overview: json['overview'] ?? '',
    experience: json['experience'] ?? 0,
    startingPrice: json['starting_price'] ?? 0,
    skills: json['skills'] ?? '',
    languageKnown: json['language_known'] ?? '',
    pusername: json['pusername'] ?? '',
    submittedAt: json['submitted_at'] != null ? DateTime.parse(json['submitted_at']) : DateTime.now(),
    approvalStatus: json['approval_status'] ?? '',
  );
}

  Map<String, dynamic> toJson() => {
        'portfolio_id': portfolioId,
        'equipment': equipment,
        'overview': overview,
        'experience': experience,
        'starting_price': startingPrice,
        'skills': skills,
        'language_known': languageKnown,
        'pusername': pusername,
        'submitted_at': submittedAt.toIso8601String(),
        'approval_status': approvalStatus,
      };
}

