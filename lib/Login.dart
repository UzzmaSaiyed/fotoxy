import 'package:flutter/material.dart';
import 'package:fotoxy/LoginPhotographer.dart';

import 'LoginUser.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Image(
              image: AssetImage('assets/a.png'),
              color: Colors.black.withOpacity(.7),
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.cover,
            ),
            centerTitle: true,
            leading: Icon(
              Icons.camera,
              color: Colors.white,
            ),
            // backgroundColor: Colors.black.withOpacity(0.8),
            title: Text(
              "Fotoxy",
              style: TextStyle(color: Colors.green),
            ),
            bottom: TabBar(
                indicatorColor: Colors.green,
                dividerColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    // child: Text("Login User",
                    //     style: TextStyle(color: Colors.white)),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    // child: Text("Login Photographer",
                    //     style: TextStyle(color: Colors.white)),
                  )
                ]),
          ),
          body: TabBarView(children: [LoginUser(), LoginPhotographer()]),
        ));
  }
}
