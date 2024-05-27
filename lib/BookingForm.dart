import 'package:flutter/material.dart';

class BookingForm extends StatefulWidget {
  const BookingForm({super.key});

  @override
  State<BookingForm> createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  TextEditingController bookingid = new TextEditingController();
  TextEditingController eventcategory = new TextEditingController();
  TextEditingController location = new TextEditingController();
  TextEditingController time = new TextEditingController();
  TextEditingController budget = new TextEditingController();
  TextEditingController additionalinfo = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Booking Form", style: TextStyle(color: Colors.green)),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(color: Colors.green),
                controller: eventcategory,
                decoration: InputDecoration(
                    labelText: "Enter the type of event ",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(color: Colors.green),
                controller: location,
                decoration: InputDecoration(
                    labelText: "Enter venue of event",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(color: Colors.green),
                controller: time,
                decoration: InputDecoration(
                    labelText: "Enter the time of event",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(color: Colors.green),
                controller: budget,
                decoration: InputDecoration(
                    labelText: "Enter your estimate budget",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(color: Colors.green),
                controller: additionalinfo,
                decoration: InputDecoration(
                    labelText:
                        "Enter any additonal inforation related to event",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.green,
                  ),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return MenuDrawer();
                    //   },
                    // ));
                  },
                  child: Text("Submit"))
            ]),
          ),
        ),
      ),
    );
  }
}
