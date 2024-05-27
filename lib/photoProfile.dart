import 'package:flutter/material.dart';
import 'package:fotoxy/BookingForm.dart';
import 'package:fotoxy/addPort.dart';
import 'package:fotoxy/main.dart';

class photoProfile extends StatefulWidget {
  const photoProfile({super.key});

  @override
  State<photoProfile> createState() => _photoProfileState();
}

class _photoProfileState extends State<photoProfile> {
  @override
  Widget build(BuildContext context) {
    int index = GlobalData.index;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Container(
            // margin: EdgeInsets.all(20),
            child: Card(
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
                        Text("Photographers Name",
                            style:
                                TextStyle(color: Colors.green, fontSize: 22)),
                        Text(
                          "Hello",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return BookingForm();
                                  },
                                ));
                              },
                              child: Text("Edit Profile"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.black),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return addPort();
                                  },
                                ));
                              },
                              child: Text("Edit PortFolio"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/heart.png")),
                    ],
                  ),
                );
              },
            ),
          )
        ]));
  }
}

// GridView.count(
//   crossAxisCount: 3,
//   crossAxisSpacing: 20,
//   // mainAxisSpacing: 2,
//   children: [
//     Image(image: AssetImage("assets/heart.png")),
//     Image(image: AssetImage("assets/heart.png")),
//     Image(image: AssetImage("assets/heart.png")),
//     Image(image: AssetImage("assets/heart.png")),
//     Image(image: AssetImage("assets/heart.png")),
//     Image(image: AssetImage("assets/heart.png")),
//     Image(image: AssetImage("assets/heart.png")),
//     Image(image: AssetImage("assets/heart.png")),
//     Image(image: AssetImage("assets/heart.png"))
//   ],
// )

// child: Column(
//   children: [
//     Container(
//       // height: 300,
//       child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(children: [
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               // crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CircleAvatar(
//                   foregroundImage: AssetImage(
//                     Data[i ?? 0]["ProfilePhoto"],
//                   ),
//                   radius: 80,
//                 ),
//                 SizedBox(width: 20),
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         Data[i ?? 0]["Name"],
//                         style: TextStyle(
//                             color: Colors.green, fontSize: 20),
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         Data[i ?? 0]["Bio"],
//                         style:
//                             TextStyle(color: Colors.grey, fontSize: 13),
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 3,
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             GridView.count(crossAxisCount: 2, children: [
//               Image(image: AssetImage("assets/heart.png"))
//             ]),
//           ])
//           // ListView.builder(
//           //   itemCount: imagePaths.length,
//           //   itemBuilder: (context, index) {
//           //     return ListTile(
//           //       title: Text("Image $index"),
//           //       leading: Image.asset(imagePaths[index]),
//           //     );
//           //   },
//           // )
//           ),
//     ),
//
//     // Text(Data[i ?? 0]["Name"]),
//     // Image(image: AssetImage(Data[i ?? 0]["ProfilePhoto"])),
//     // Text(Data[i ?? 0]["Bio"]),
//   ],
// ),

//
// Container(
// width: 500,
// height: 300,
// child: Row(
// children: [
// Container(
// width: 200,
// height: 200,
// child: Image(
// image: AssetImage("assets/pro2.jpg"),
// fit: BoxFit.fill,
// )),
// SizedBox(
// width: 20,
// ),
// Container(
// width: 200,
// height: 200,
// child: Image(
// image: AssetImage("assets/pro2.jpg"),
// fit: BoxFit.fill,
// )),
// SizedBox(
// height: 20,
// ),
// ],
// ),
// ),
// Container(
// width: 500,
// height: 300,
// child: Row(
// children: [
// Container(
// width: 200,
// height: 200,
// child: Image(
// image: AssetImage("assets/pro2.jpg"),
// fit: BoxFit.fill,
// )),
// SizedBox(
// width: 20,
// ),
// Container(
// width: 200,
// height: 200,
// child: Image(
// image: AssetImage("assets/pro2.jpg"),
// fit: BoxFit.fill,
// )),
// SizedBox(
// height: 20,
// ),
// ],
// ),
// )
