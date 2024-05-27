import 'package:flutter/material.dart';

class HiringList extends StatefulWidget {
  const HiringList({super.key});

  @override
  State<HiringList> createState() => _HiringListState();
}

class _HiringListState extends State<HiringList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            title: Text("Hiring List", style: TextStyle(color: Colors.green)),
            backgroundColor: Colors.black),
        body: Card(
          color: Colors.green.withOpacity(1),
          child: ListTile(
              title: Text("Hiring 1"),
              onTap: () {},
              subtitle: Text("Hiring details")),
        ));
  }
}
