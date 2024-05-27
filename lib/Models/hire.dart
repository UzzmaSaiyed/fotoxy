import 'dart:convert';

Hire dataModelFromJson(String str) => Hire.fromJson(json.decode(str));
String dataModelToJson(Hire data) => json.encode(data.toJson());

class Hire {
  int hireId;
  String modelHire;
  String staffHire;
  String comment;
  int experienceNeeded;
  String skillsRequired;
  String emailId;
  String pusername;
  DateTime submittedAt;
  String approvalStatus;

  Hire({
    required this.hireId,
    required this.modelHire,
    required this.staffHire,
    required this.comment,
    required this.experienceNeeded,
    required this.skillsRequired,
    required this.emailId,
    required this.pusername,
    required this.submittedAt,
    required this.approvalStatus,
  });

  factory Hire.fromJson(Map<String, dynamic> json) {
  return Hire(
    hireId: json['hire_id'] ?? 0,
    modelHire: json['model_hire'] ?? '',
    staffHire: json['staff_hire'] ?? '',
    comment: json['comment'] ?? '',
    experienceNeeded: json['experience_needed'] ?? 0,
    skillsRequired: json['skills_required'] ?? '',
    emailId: json['email_id'] ?? '',
    pusername: json['pusername'] ?? '',
    submittedAt: json['submitted_at'] != null ? DateTime.parse(json['submitted_at']) : DateTime.now(),
    approvalStatus: json['approval_status'] ?? '',
  );
}


  Map<String, dynamic> toJson() {
    return {
      'hire_id': hireId,
      'model_hire': modelHire,
      'staff_hire': staffHire,
      'comment': comment,
      'experience_needed': experienceNeeded,
      'skills_required': skillsRequired,
      'email_id': emailId,
      'pusername': pusername,
      'submitted_at': submittedAt.toIso8601String(),
      'approval_status': approvalStatus,
    };
  }
}

