import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fotoxy/Aboutus.dart';
import 'package:fotoxy/HiringList.dart';
import 'package:fotoxy/Login.dart';
import 'package:fotoxy/LoginPhotographer.dart';
import 'package:fotoxy/addPort.dart';
import 'package:fotoxy/bookinglist.dart';
import 'package:fotoxy/photoProfile.dart';
import 'package:image_picker/image_picker.dart';

import 'hireForm.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MenuDrawer(),
//   ));
// }

class HomePhoto extends StatefulWidget {
  const HomePhoto({Key? key});

  @override
  State<HomePhoto> createState() => _HomePhotoState();
}

class _HomePhotoState extends State<HomePhoto> {
  File? _image;

  Future getImage() async {
    final picker = ImagePicker();
    // ignore: deprecated_member_use
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  // String dropdownValue = 'Manage Profile';

  int selectedIndex = 0;

  List<Widget> list = [BookingList(), photoProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.black,
    floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo, color: Colors.black),
        backgroundColor: Colors.green,
      ),
      appBar: AppBar(
          centerTitle: true,
          title: Text("Welcome Photographer",
              style: TextStyle(color: Colors.green)),
          backgroundColor: Colors.black),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          onTap: (value) {
            // GlobalData.navigationIndex = value;
            selectedIndex = value;
            setState(() {});
          },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.add_business), label: "Hiring"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.collections), label: "Album"),
            BottomNavigationBarItem(
                icon: Icon(Icons.portrait), label: "Profile")
          ]),
  
      drawer: Drawer(
        child: Container(
          color: Colors.white70,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  currentAccountPicture: CircleAvatar(
                    child: Text("F"),
                  ),
                  accountName:
                      Text("Fotoxy", style: TextStyle(color: Colors.black)),
                  accountEmail: Text(
                    "fotoxy.Photographer@gmail.com",
                    style: TextStyle(color: Colors.black),
                  )),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return hireForm();
                    },
                  ));
                },
                title: Text("Hire"),
                leading: Icon(Icons.account_tree),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Aboutus();
                    },
                  ));
                },
                title: Text("Contact Us"),
                leading: Icon(Icons.contact_support_outlined),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                },
                title: Text("Logout"),
                leading: Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ),
      body: list[selectedIndex],
    );
  }
}
