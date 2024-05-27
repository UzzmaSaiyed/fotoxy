import 'package:flutter/material.dart';

class BookingList extends StatefulWidget {
  const BookingList({super.key});

  @override
  State<BookingList> createState() => _BookingListState();
}

class _BookingListState extends State<BookingList> {
  TextEditingController id = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController category = new TextEditingController();
  TextEditingController equipment = new TextEditingController();
  TextEditingController overview = new TextEditingController();
  TextEditingController experience = new TextEditingController();
  TextEditingController price = new TextEditingController();
  TextEditingController skill = new TextEditingController();
  TextEditingController language = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Card(
        color: Colors.green.withOpacity(1),
        child: ListTile(
            title: Text("Booking 1"),
            onTap: () {},
            subtitle: Text("Booking details")),
      ),
    );
  }
}
