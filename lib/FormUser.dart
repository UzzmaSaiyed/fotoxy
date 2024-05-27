// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fotoxy/Constants/api.dart';
import 'package:fotoxy/Login.dart';
import 'package:fotoxy/Models/user.dart';
import 'package:http/http.dart' as http;

class FormUser extends StatefulWidget {
  @override
  _FormUserState createState() => _FormUserState();
}

class _FormUserState extends State<FormUser> {
  TextEditingController usernamec = TextEditingController();
  TextEditingController firstnamec = TextEditingController();
  TextEditingController lastnamec = TextEditingController();
  TextEditingController mobile_noc = TextEditingController();
  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  TextEditingController experiencec = TextEditingController();
  TextEditingController otherc = TextEditingController();
  User? createuser;
  Future<User?> createUser(String username, String firstname, String lastname, int mobileNo, String email, String password, int experience, String other) async {
  try {
    var response = await http.post(
      Uri.parse(userapi),
      body: {
        'username': username,
        'firstname': firstname,
        'lastname': lastname,
        'mobile_no': mobileNo.toString(),
        'email': email,
        'password': password,
        'experience': experience.toString(),
        'other': other,
        'submittedAt': DateTime.now().toString(),
        'approvalStatus': '',
        'id': '0',
        'lastLogin': DateTime.now().toString(),
        'getEmailFieldName': '',
      },
    );

    if (response.statusCode == 201) {
      // Parse the response body to a User object
      var user = dataModelFromJson(response.body);
      return user;
    } else {
      // Handle API error
      print('Failed to create user: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    // Handle network or server error
    print('Error creating user: $e');
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Register as a User",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                              backgroundColor: Colors.black.withOpacity(.1),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: usernamec,
                          decoration: const InputDecoration(
                            labelText: "Username",
                            labelStyle: TextStyle(color: Colors.white),
                            // icon: Icon(Icons.document_scanner),
                          ),
                          style: TextStyle(color: Colors.green)),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: firstnamec,
                          decoration: const InputDecoration(
                            labelText: "First Name",
                            labelStyle: TextStyle(color: Colors.white),
                            // icon: Icon(Icons.document_scanner),
                          ),
                          style: TextStyle(color: Colors.green)),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: lastnamec,
                          decoration: InputDecoration(
                            labelText: 'Last Name',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.green)),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: mobile_noc,
                          decoration: InputDecoration(
                            labelText: 'Contact',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.green)),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: emailc,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.green)),
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
                        controller: experiencec,
                          decoration: InputDecoration(
                            labelText: 'Experience',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.green)),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: otherc,
                          decoration: InputDecoration(
                            labelText: 'Other',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          style: TextStyle(color: Colors.green)),
                      SizedBox(height: 16),
                      ElevatedButton(
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor: MaterialStateProperty.all(
                                Colors.black.withOpacity(.7))),
                        onPressed: () async {
                          String username = usernamec.text;
                          String firstname = firstnamec.text;
                          String lastname = lastnamec.text;
                          int mobile_no;
                          String email = emailc.text;
                          String password = passwordc.text;
                          int experience;
                          String other = otherc.text;
                          try {mobile_no = int.parse(mobile_noc.text); 
                          experience = int.parse(experiencec.text);
                          } 
                          catch (e) {
                            print('Error parsing input: $e');
                            return;
                            }

                          User? data = await createUser(username, firstname, lastname, mobile_no, email, password, experience, other);
                        
                          setState(() {
                            createuser = data;
                            });
                            if (data != null) {
      setState(() {
        createuser = data;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Center(
            child: Text(
              'Successfull!',
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 146, 219),
        )
      );

      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Center(
            child: Text(
              'Failed to create User',
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.red,
        )
      );
    }
                          
                               
                        },
                        child: Text('Submit',
                            style: TextStyle(color: Colors.green)),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
