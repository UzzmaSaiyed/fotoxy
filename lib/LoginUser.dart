// ignore_for_file: prefer_const_constructors, unused_import, library_private_types_in_public_api, use_key_in_widget_constructors, unused_local_variable, unused_field

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fotoxy/FormUser.dart';
// import 'package:fotoxy/HomeUser.dart';
import 'package:fotoxy/Constants/api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fotoxy/HomeUser.dart';
import 'package:fotoxy/Models/user.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginUser extends StatefulWidget {
  @override
  _LoginUserState createState() => _LoginUserState();

  static void loginUser() {}
}


class _LoginUserState extends State<LoginUser> {
String dropdownValue = 'Photographer';
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

String _message = '';


  Future<void> _forgotPassword() async {
  

    // Make API request
    var url = Uri.parse(forgotpass);
    var response = await http.post(
      url,
    );
    if (response.statusCode == 200) {
      // Successful request, show success message
      setState(() {
        _message = 'Password reset instructions sent to your email.';
      });
    } else {
      // Request failed, show error message
      setState(() {
        _message = 'Failed to send reset instructions. Please try again later.';
      });
    }

  }

  Future<void> loginUser() async {
    String email = emailController.text.trim();
    String password = passwordController.text;

    // Create a User object with the entered email and password
    User user = User(
      username: '',
      firstname: '',
      lastname: '',
      mobile_no: 0,
      email: email,
      password: password,
      experience: 0,
      other: '', submittedAt: DateTime.now(), approvalStatus: '', id: 0, lastLogin:DateTime.now(), getEmailFieldName: '',
    );

    // Convert the User object to JSON format
    String jsonData = dataModelToJson(user);

    try {
      final http.Response response = await http.post(
        Uri.parse(loginuapi), // Use your login API endpoint
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonData,
      );

      if (response.statusCode == 200) {
        // Successful login
        // Parse the response data if needed
        Map<String, dynamic> responseData = json.decode(response.body);

        // Navigate to the home screen or perform any action upon successful login
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeUser()),
        );
      } else {
        // Login failed
        // Show error message or handle other cases
        print('Login failed');
         ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid Credentials'),
          backgroundColor: Colors.red,
        ),
      );
      //   Fluttertoast.showToast(
      //   msg: 'Invalid Credentials', // Your error message here
      //   toastLength: Toast.LENGTH_SHORT,
      //   gravity: ToastGravity.BOTTOM,
      //   backgroundColor: Colors.red,
      //   textColor: Colors.white,
      // );
      }
    } catch (error) {
      // Error occurred during login
      // Handle error
      print('Error during login: $error');
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "User",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.green,
                            backgroundColor: Colors.black.withOpacity(.1),
                          ),
                        )
                      ],
                    ),
                    TextFormField(
                      controller: emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(color: Colors.green)),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      style: TextStyle(color: Colors.green),
                      obscureText: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forget Password?",
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                        TextButton(
                            onPressed: _forgotPassword,
                            child: Text(
                              "Click here",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 10),
                            ))
                      ],
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          alignment: Alignment.center,
                          backgroundColor: MaterialStateProperty.all(
                              Colors.black.withOpacity(.7))),
                      onPressed: () {
                        // Handle form submission
                        loginUser();
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => HomeUser()));
                       },
                      child:
                          Text('Login', style: TextStyle(color: Colors.green)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Does not have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return FormUser();
                                },
                              ));
                            },
                            child: Text(
                              "Sign Up!",
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
