import 'package:flutter/material.dart';

import 'HomePhoto.dart';
import 'main.dart';

class addPort extends StatefulWidget {
  const addPort({super.key});

  @override
  State<addPort> createState() => _addPortState();
}

class _addPortState extends State<addPort> {
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
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              TextField(
                  controller: name,
                  style: TextStyle(color: Colors.green),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white70),
                    labelText: "Enter your PortFolio Name",
                  )),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: category,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white70),
                  labelText: "Category",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: equipment,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white70),
                  labelText: "Equipment Used",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: overview,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelText: "Overview of the PortFolio",
                  labelStyle: TextStyle(color: Colors.white70),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: experience,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelText: "Years of Experience",
                  labelStyle: TextStyle(color: Colors.white70),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: price,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelText: "Starting price for shoot",
                  labelStyle: TextStyle(color: Colors.white70),
                ),
              ),
              SizedBox(
                height: 20,
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
                height: 20,
              ),
              TextField(
                controller: language,
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.white70),
                  labelText: "Language Preferred",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    // portfolio newportfolio = new portfolio();

                    // newportfolio.id1 = id.text;
                    // newportfolio.name1 = name.text;
                    // newportfolio.category1 = category.text;
                    // newportfolio.Eqipment1 = equipment.text;
                    // newportfolio.overview1 = overview.text;
                    // newportfolio.experience1 = experience.text;
                    // newportfolio.price1 = price.text;
                    // newportfolio.skill1 = skill.text;
                    // newportfolio.language1 = language.text;

                    // GlobalData.lstportfolio.add(newportfolio);
                    // print(GlobalData.lstportfolio.length);

                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        // GlobalData.navigationIndex = 3;
                        return HomePhoto();
                      },
                    ));
                  },
                  child: Text("Add Portfolio"))
            ]),
          ),
        ),
      ),
    );
  }
}
