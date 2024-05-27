import 'package:flutter/material.dart';
import 'package:fotoxy/Aboutus.dart';
import 'package:fotoxy/BookingForm.dart';
import 'package:fotoxy/help.dart';
import 'package:fotoxy/userprofile.dart';

import 'HomeUser.dart';
import 'Login.dart';
import 'LoginUser.dart';
import 'VisitProfile.dart';

void main() {
  runApp(MaterialApp(
    title: 'Registration Form',
    initialRoute: "/Login",
    routes: {
     "/help": (context) => register(),
      "/Login": (context) => Login(),
      "/visitprofile": (context) => VisitProfile(photographerData: {}),
      "/loginuser": (context) => LoginUser(),
      "/homeuser": (context) => HomeUser(),
      "/booking": (context) => BookingForm(),
      "/userprofile": (context) => userprofile(),
      "/aboutus": (context) => Aboutus(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class GlobalData {
  static int index = 0;
  static List<Profiles> lp = [];
}

class Profiles {
  String Dp = "";
  String Name = "";
  String Description = "";
}


