import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fotoxy/Constants/api.dart';
import 'package:fotoxy/HiringList.dart';
import 'package:fotoxy/Login.dart';
import 'package:fotoxy/Models/photographer.dart';
import 'package:fotoxy/VisitProfile.dart';
import 'package:fotoxy/main.dart';
import 'package:fotoxy/userprofile.dart';
import 'package:http/http.dart' as http;

import 'Aboutus.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  List<Photographer> _myPhotographer = [];
  bool isLoading = true;

  Future<List<Photographer>> fetchPhotographer() async {
    var response = await http.get(Uri.parse(photographerapi));
    List<Photographer> myPhotographer = [];
    if (response.statusCode == 200) {
      var log = json.decode(response.body);
      for (var logs in log) {
        myPhotographer.add(Photographer.fromJson(logs));
      }
      setState(() {
        isLoading = false;
      });
    }
    return myPhotographer;
  }

  @override
  void initState() {
    fetchPhotographer().then((value) {
      setState(() {
        _myPhotographer.addAll(value);
      });
    });
    super.initState();
  }
  List Data = [
    {
      "Id": 1,
      "Name": "Jacob Owens",
      "ProfilePhoto": "assets/pro2.jpg",
      "Bio":
          "Filmmaker, Photographer, Entrepreneur : LA/PHX - Instagram: @JakobOwens"
    },
    {
      "Id": 2,
      "Name": "Marco Xu",
      "ProfilePhoto": "assets/pro2.jpg",
      "Bio":
          "PHOTOGRAPHER/CREATIVE, PUBLISHED 2 BOOKS AND TRAVELED TO TIBET BY BIKE."
    },
    {
      "Id": 3,
      "Name": "The Nigmatic",
      "ProfilePhoto": "assets/pro3.jpg",
      "Bio": "Download free, beautiful high-quality photos curated by The."
    },
    {
      "Id": 4,
      "Name": "Nijwam Swargiary",
      "ProfilePhoto": "assets/pro4.jpg",
      "Bio":
          "I am a freelance photographer. I shoot anything and evesjdbsjhbjshbjah jshdbsbdkjad  jsndksdnksd knsjdnsjdskhfkdbsd jsjdksksjnkanrything. Ambient light shooter. Follow me on instagram @pixel_talkies and @travelerunknown_27 to see more content.."
    },
    {
      "Id": 5,
      "Name": "Nijwam Swargiary",
      "ProfilePhoto": "assets/pro4.jpg",
      "Bio":
          "I am a freelance photographer. I shoot anything and everything. Ambient light shooter. Follow me on instagram @pixel_talkies and @travelerunknown_27 to see more content.."
    },
    {
      "Id": 6,
      "Name": "Nijwam Swargiary",
      "ProfilePhoto": "assets/pro4.jpg",
      "Bio":
          "I am a freelance photographer. I shoot anything and everything. Ambient light shooter. Follow me on instagram @pixel_talkies and @travelerunknown_27 to see more content.."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( backgroundColor: Colors.green,onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder:  (context) {
          return HiringList();
        },));
      },),
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
                  onTap: () {},
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return userprofile();
                      },
                    ));
                  },
                  title: Text("Profile"),
                  leading: Icon(Icons.person_3_rounded),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("Notifications"),
                  leading: Icon(Icons.notification_important_outlined),
                ),
                ListTile(
                  iconColor: Colors.black,
                  leading: Icon(Icons.contact_mail),
                  title: const Text('Contact Us'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Aboutus();
                      },
                    ));
                  },
                ),
                ListTile(
                  iconColor: Colors.black,
                  leading: Icon(Icons.credit_card),
                  title: const Text('About Us'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Aboutus();
                      },
                    ));
                  },
                ),
                ListTile(
                  iconColor: Colors.black,
                  leading: Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {},
                ),
                ListTile(
                  iconColor: Colors.black,
                  leading: Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Login();
                      },
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          flexibleSpace: Image(
            image: AssetImage('assets/a.png'),
            color: Colors.black.withOpacity(.3),
            colorBlendMode: BlendMode.darken,
            fit: BoxFit.cover,
          ),
          backgroundColor: Colors.green.withOpacity(1),
          centerTitle: true,
          elevation: 0,
          //
          title: const Text(
            'Fotoxy',
            style: TextStyle(
              color: Colors.green,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          // elevation: 0,
          // backgroundColor: Colors.transparent,
        ),
        body: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: _myPhotographer.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(8),
                    color: Colors.green.withOpacity(0.2),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Column(children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          // color: Colors.black,
                          height: 130,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    foregroundImage:
                                        AssetImage(Data[index]["ProfilePhoto"]),
                                    radius: 50,
                                  ),
                                ],
                              ),
                              // Image(
                              //   image: AssetImage('assets/pro1.jpg'),
                              //   height: 130,
                              //   width: 130,
                              //   fit: BoxFit.cover,
                              // ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Container(
                                  height: 130,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            _myPhotographer[index].pusername,
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        _myPhotographer[index].email,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 10),
                                      ),
                                      // SizedBox(height: 10),
                                      // Text(
                                      //   _myPhotographer[index].document,
                                      //   overflow: TextOverflow.ellipsis,
                                      //   maxLines: 3,
                                      //   style: TextStyle(
                                      //       color: Colors.white70,
                                      //       fontSize: 10),
                                      // ),
                                      // SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: Colors.white70),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.white70.withOpacity(.1))),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    GlobalData.index = index;
                                    return VisitProfile(photographerData: _myPhotographer[index].toJson());
                                  },
                                ));
                                // Navigator.pushNamed(context, "/visitprofile",
                                //     arguments: {"index": index});
                              },
                              child: Text('Visit Profile',
                                  style: TextStyle(color: Colors.white70)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ]),
                    ),
                  );
                }),
          ),
        ));
  }
}
