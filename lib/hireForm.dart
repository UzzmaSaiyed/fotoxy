//import 'dart:html';

import 'package:flutter/material.dart';

import 'HomePhoto.dart';

class hireForm extends StatefulWidget {
  const hireForm({super.key});

  @override
  State<hireForm> createState() => _hireFormState();
}

class _hireFormState extends State<hireForm> {
  TextEditingController model = new TextEditingController();
  TextEditingController staff = new TextEditingController();
  TextEditingController comment = new TextEditingController();
  TextEditingController exp = new TextEditingController();
  TextEditingController skill = new TextEditingController();
  TextEditingController email = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hiring Form", style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: model,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white70),
                  labelText: "Hire Model (Yes or No)",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: staff,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white70),
                  labelText: "Hire Staff (Yes or No)",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: comment,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white70),
                  labelText: "Any additional comments",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: exp,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white70),
                  labelText: "Years of Exp?",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: skill,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white70),
                  labelText: "Skills",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: email,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white70),
                  labelText: "EMail",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white70,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return HomePhoto();
                      },
                    ));
                  },
                  child: Text("Submit"))
            ]),
          ),
        ),
      ),
    );
  }
}
