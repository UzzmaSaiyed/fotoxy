// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fotoxy/Constants/api.dart';
import 'package:fotoxy/Login.dart';
import 'package:fotoxy/Models/photographer.dart';
import 'package:http/http.dart' as http;

class FormPhotographer extends StatefulWidget {
  @override
  _FormPhotographerState createState() => _FormPhotographerState();
}

class _FormPhotographerState extends State<FormPhotographer> {
  TextEditingController pusernamec = TextEditingController();
  TextEditingController firstnamec = TextEditingController();
  TextEditingController lastnamec = TextEditingController();
  TextEditingController mobile_noc = TextEditingController();
  TextEditingController streetnamec = TextEditingController();
  TextEditingController cityc = TextEditingController();
  TextEditingController pincodec = TextEditingController();
  TextEditingController statec = TextEditingController();
  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  TextEditingController otherc = TextEditingController();
  
  Photographer? createphotographer;
  Future<Photographer?> createPhotographer(String pusername, String firstname, String lastname,int mobile_no,String streetname,String city,int pincode,String state,
  String email,String document, String password, String other) async {
    try {
      var response = await http.post(
        Uri.parse(photographerapi),
        body: {
          'pusername': pusername,
          'firstname': firstname,
          'lastname': lastname,
          'mobile_no': mobile_no.toString(),
          'streetname': streetname,
          'city': city,
          'pincode': pincode.toString(),
          'state': state,
          'email': email,
          'document':'images/a.jpg',
          'password': password,
          'other': other,
          'submitted_at': DateTime.now().toString(),
          'approval_status': '',
          'last_login': DateTime.now().toString(),
          'id': '0',
        },
      );

      if (response.statusCode == 201) {
        var photographer = dataModelFromJson(response.body);
        return photographer;
      } else {
        print('Failed to create photographer: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error creating photographer: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/a.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Register as a Photographer",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                              backgroundColor: Colors.black.withOpacity(.1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: pusernamec,
                        decoration: const InputDecoration(
                          labelText: "Username",
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: firstnamec,
                        decoration: const InputDecoration(
                          labelText: "First Name",
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: lastnamec,
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: mobile_noc,
                        decoration: InputDecoration(
                          labelText: 'Contact',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: streetnamec,
                        decoration: InputDecoration(
                          labelText: 'Street Address',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: cityc,
                        decoration: InputDecoration(
                          labelText: 'City',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: pincodec,
                        decoration: InputDecoration(
                          labelText: 'Pincode',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: statec,
                        decoration: InputDecoration(
                          labelText: 'State',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: emailc,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: passwordc,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green),
                        obscureText: true,
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: otherc,
                        decoration: InputDecoration(
                          labelText: 'Description of your work',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        style: ButtonStyle(
                          alignment: Alignment.center,
                          backgroundColor: MaterialStateProperty.all(
                            Colors.black.withOpacity(.7),
                          ),
                        ),
                        onPressed: () async {
                          String pusername = pusernamec.text;
                          String firstname = firstnamec.text;
                          String lastname = lastnamec.text;
                          int mobile_no;
                          String streetname = streetnamec.text;
                          String city = cityc.text;
                          int pincode;
                          String state = statec.text;
                          String email = emailc.text;
                          String document = 'images/a.jpg';
                          String password = passwordc.text;
                          String other = otherc.text;

                          try {
                            mobile_no = int.parse(mobile_noc.text);
                            pincode = int.parse(pincodec.text);
                          } catch (e) {
                            print('Error parsing input: $e');
                            return;
                          }

                          Photographer? data = await createPhotographer(
                            pusername,
                            firstname,
                            lastname,
                            mobile_no,
                            streetname,
                            city,
                            pincode,
                            state,
                            email,
                            document,
                            password,
                            other,
                          );
                          print(data);
                          setState(() {
                            createphotographer = data;
                            });

                          if (data != null) {
                            setState(() {
                              createphotographer = data;
                            });

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Center(
                                  child: Text(
                                    'Successful!',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                backgroundColor: Color.fromARGB(255, 0, 146, 219),
                              ),
                            );

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Center(
                                  child: Text(
                                    'Failed to create photographer',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                backgroundColor: Colors.red,
                              ),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          }
                        },
                        child: Text('Submit', style: TextStyle(color: Colors.green)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
