// ignore_for_file: unused_import, use_key_in_widget_constructors, library_private_types_in_public_api, unused_local_variable, prefer_const_constructors, unused_field, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fotoxy/FormPhotographer.dart';
import 'dart:math';
import 'package:fotoxy/FormUser.dart';
// import 'package:fotoxy/HomeUser.dart';
import 'package:fotoxy/Constants/api.dart';
import 'package:fotoxy/HomePhoto.dart';
import 'package:fotoxy/Models/photographer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fotoxy/HomeUser.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';


class LoginPhotographer extends StatefulWidget {
  @override
  _LoginPhotographerState createState() => _LoginPhotographerState();
}

class _LoginPhotographerState extends State<LoginPhotographer> {
  String dropdownValue = 'Photographer';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String _message = '';

  Future<void> _forgotPassword() async {
  

  try {
    var url = Uri.parse(forgotpass);
    var response = await http.post(
      url
    );

    if (response.statusCode == 200) {
      // Successful request, show success message
      setState(() {
        _message = 'Password reset instructions sent to your email.';
      });

      // Replace 'YOUR_FORGOT_PASSWORD_URL' with the actual URL for password reset
      String forgotPasswordUrl = 'http://fotoxy.pythonanywhere.com/forgot-password/';
      
      // Launch the URL in the default browser
      await launch(forgotPasswordUrl);
    } else {
      // Request failed, show error message
      setState(() {
        _message = 'Failed to send reset instructions. Please try again later.';
      });
    }
  } catch (error) {
    // Handle error
    print('Error during forgot password request: $error');
    setState(() {
      _message = 'Failed to send reset instructions. Please try again later.';
    });
  }
}



  Future<void> loginPhotographer() async {
    String email = emailController.text.trim();
    String password = passwordController.text;

    Photographer photographer = Photographer(pusername: '', firstname: '', lastname: '', mobileNo: 0, streetname: '', city: '', pincode: 0, state: '', email: email, document:'', password: password, other: '', approvalStatus: '', submittedAt: DateTime.now(), lastLogin: DateTime.now(), id: 0,
  
    );

    // Convert the User object to JSON format
    String jsonData = dataModelToJson(photographer);

    try {
      final http.Response response = await http.post(
        Uri.parse(loginpapi), // Use your login API endpoint
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
          MaterialPageRoute(builder: (context) => HomePhoto()),
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
                          "Photographer",
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
                        loginPhotographer();

                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => HomeUser()));
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
                                  return FormPhotographer();
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
