import 'package:flutter/material.dart';

class userprofile extends StatefulWidget {
  const userprofile({super.key});

  @override
  State<userprofile> createState() => _userprofileState();
}

class _userprofileState extends State<userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "User Profile ",
            style: TextStyle(color: Colors.green),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  margin: EdgeInsets.all(20),
                  color: Colors.green.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          foregroundImage: AssetImage("a.png"),
                          radius: 100,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("First + Last Name",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 22)),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Email Address",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Contact Information",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Experience",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Edit Profile"),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      foregroundColor: Colors.black),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Delete Profile"),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      foregroundColor: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
