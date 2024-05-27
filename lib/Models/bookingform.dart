import 'dart:convert';

BookingForm dataModelFromJson(String str) => BookingForm.fromJson(json.decode(str));
String dataModelToJson(BookingForm data) => json.encode(data.toJson());

class BookingForm {
  int bookingId;
  String typeOfEvent;
  String locationOfEvent;
  DateTime startDate;
  int budget;
  String additionalComments;
  String username;
  String pusername;
  DateTime submittedAt;
  String approvalStatus;

  BookingForm({
    required this.bookingId,
    required this.typeOfEvent,
    required this.locationOfEvent,
    required this.startDate,
    required this.budget,
    required this.additionalComments,
    required this.username,
    required this.pusername,
    required this.submittedAt,
    required this.approvalStatus,
  });

  factory BookingForm.fromJson(Map<String, dynamic> json) {
  return BookingForm(
    bookingId: json['booking_id'] ?? 0,
    typeOfEvent: json['type_of_event'] ?? '',
    locationOfEvent: json['location_of_event'] ?? '',
    startDate: DateTime.parse(json['start_date'] ?? ''),
    budget: json['budget'] ?? 0,
    additionalComments: json['additional_comments'] ?? '',
    username: json['username'] ?? '',
    pusername: json['pusername'] ?? '',
    submittedAt: json['submitted_at'] != null ? DateTime.parse(json['submitted_at']) : DateTime.now(),
    approvalStatus: json['approval_status'] ?? '',
  );
}


  Map<String, dynamic> toJson() {
    return {
      'booking_id': bookingId,
      'type_of_event': typeOfEvent,
      'location_of_event': locationOfEvent,
      'start_date': startDate.toIso8601String(),
      'budget': budget,
      'additional_comments': additionalComments,
      'username': username,
      'pusername': pusername,
      'submitted_at': submittedAt.toIso8601String(),
      'approval_status': approvalStatus,
    };
  }
}
