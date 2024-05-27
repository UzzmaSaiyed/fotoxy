import 'package:flutter/material.dart';
import 'package:fotoxy/BookingForm.dart';
import 'package:fotoxy/main.dart';

class VisitProfile extends StatelessWidget {
  final Map<String, dynamic> photographerData;

  VisitProfile({required this.photographerData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage('assets/a.png'),
          color: Colors.black.withOpacity(.3),
          colorBlendMode: BlendMode.darken,
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Fotoxy',
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Card(
              color: Colors.green.withOpacity(0.2),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      foregroundImage: AssetImage("a.png"),
                      radius: 50,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            photographerData['pusername'],
                            style: TextStyle(color: Colors.green, fontSize: 22),
                          ),
                          Text(
                            photographerData[
                                'email'], // Use the bio field of photographerData
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return BookingForm();
                                },
                              ));
                            },
                            child: Text("Inquire"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
           Image.network(photographerData['document'],height: 240,width: 240,),
          // Add other widgets as needed for displaying additional photographer data
        ],
      ),
    );
  }
}
