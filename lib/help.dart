import 'package:flutter/material.dart';

// import 'PhotographerForm.dart';
// import 'UserForm.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.only(
                top: 55.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Control',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Panel',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 150,
                ),
                CircleAvatar(
                  radius: 25.0,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              child: SingleChildScrollView(
                //Your SingleChildScrollView Widget
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'All Rooms',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.add),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'Bed Room   ',
                                ),
                                Text(
                                  '4 Lights',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.add),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'Living Room',
                                ),
                                Text(
                                  '2 Lights',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(25.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.add),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Text(
                                      'Kitchen      ',
                                    ),
                                    Text(
                                      '5 Lights',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.add),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'Bath Room  ',
                                ),
                                Text(
                                  '1 Light',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(25.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.add),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Text(
                                      'Kitchen      ',
                                    ),
                                    Text(
                                      '5 Lights',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.add),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'Bath Room  ',
                                ),
                                Text(
                                  '1 Light',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(25.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.add),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Text(
                                      'Kitchen      ',
                                    ),
                                    Text(
                                      '5 Lights',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.add),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'Bath Room  ',
                                ),
                                Text(
                                  '1 Light',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(25.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.add),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Text(
                                      'Outdoor     ',
                                    ),
                                    Text(
                                      '5 Lights',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Card(
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.add),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'Balcony      ',
                                ),
                                Text(
                                  '2 Lights',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Text('Bottom Nav bar')
        ],
      ),
    );
  }
}


