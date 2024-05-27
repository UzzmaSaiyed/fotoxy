import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("About Us", style: TextStyle(color: Colors.green)),
      //   backgroundColor: Colors.black,
      // ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Card(
          margin: EdgeInsets.all(20),
          color: Colors.green.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(children: [
              CircleAvatar(
                foregroundImage: AssetImage("a.png"),
                radius: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Delcy Jivrajani",
                        style: TextStyle(color: Colors.green, fontSize: 22)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "202300819010073",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "delcyjivrajani@gmail.com",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "+91 94271 45271",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
        Card(
          margin: EdgeInsets.all(20),
          color: Colors.green.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(children: [
              CircleAvatar(
                foregroundImage: AssetImage("a.png"),
                radius: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Faiz Mansuri",
                        style: TextStyle(color: Colors.green, fontSize: 22)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "202300819010080",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "faizmansuri5@gmail.com",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "+91 99243 90038",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
        Card(
          margin: EdgeInsets.all(20),
          color: Colors.green.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(children: [
              CircleAvatar(
                foregroundImage: AssetImage("a.png"),
                radius: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Uzzma Saiyed",
                        style: TextStyle(color: Colors.green, fontSize: 22)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "202300819010102",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "uzzmasaiyed@gmail.com",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "+91 70432 77644",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
