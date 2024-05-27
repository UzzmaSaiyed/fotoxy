import 'package:flutter/material.dart';

class DetailDisplay extends StatefulWidget {
  const DetailDisplay({super.key});

  @override
  State<DetailDisplay> createState() => _DetailDisplayState();
}

class _DetailDisplayState extends State<DetailDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Details"),
    );
  }
}

// import 'dart:html';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/GlobalData.dart';
// import 'package:image_picker/image_picker.dart';
//
// import 'main.dart';
//
// class DetailDisplay extends StatefulWidget {
//   const DetailDisplay({super.key});
//
//   @override
//   State<DetailDisplay> createState() => _DetailDisplayState();
// }
//
// class _DetailDisplayState extends State<DetailDisplay> {
//   File? _image;
//
//   @override
//   Widget build(BuildContext context) {
//     Future<void> _getImage(ImageSource source) async {
//       final pickedFile = await ImagePicker().pickImage(source: source);
//       if (pickedFile != null) {
//         // Handle picked image
//       }
//     }
//
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _getImage(ImageSource.gallery),
//         // Change to ImageSource.camera for camera
//         tooltip: 'Pick Image',
//         child: Icon(Icons.add_a_photo),
//       ),
//       appBar: AppBar(
//         title: Text("Detail View"),
//       ),
//       body: Column(children: [
//         Text(
//           GlobalData.lstportfolio[GlobalData.selectedIndex].id1,
//           style: TextStyle(fontSize: 30, color: Colors.red),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           GlobalData.lstportfolio[GlobalData.selectedIndex].name1,
//           style: TextStyle(fontSize: 30, color: Colors.red),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           GlobalData.lstportfolio[GlobalData.selectedIndex].category1,
//           style: TextStyle(fontSize: 30, color: Colors.red),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           GlobalData.lstportfolio[GlobalData.selectedIndex].Eqipment1,
//           style: TextStyle(fontSize: 30, color: Colors.red),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           GlobalData.lstportfolio[GlobalData.selectedIndex].overview1,
//           style: TextStyle(fontSize: 30, color: Colors.red),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           GlobalData.lstportfolio[GlobalData.selectedIndex].experience1,
//           style: TextStyle(fontSize: 30, color: Colors.red),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           GlobalData.lstportfolio[GlobalData.selectedIndex].price1,
//           style: TextStyle(fontSize: 30, color: Colors.red),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           GlobalData.lstportfolio[GlobalData.selectedIndex].skill1,
//           style: TextStyle(fontSize: 30, color: Colors.red),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Text(
//           GlobalData.lstportfolio[GlobalData.selectedIndex].language1,
//           style: TextStyle(fontSize: 30, color: Colors.red),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         ElevatedButton(
//             onPressed: () {
//               GlobalData.lstportfolio.removeAt(GlobalData.selectedIndex);
//               Navigator.pop(context);
//             },
//             child: Text("Delete")),
//         ElevatedButton(onPressed: () {}, child: Text("Add Photos"))
//       ]),
//     );
//   }
// }
