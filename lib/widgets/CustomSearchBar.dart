import 'package:flutter/material.dart';

class SEARCHBAR extends StatefulWidget {
  @override
  _SEARCHBARState createState() => _SEARCHBARState();
}

class _SEARCHBARState extends State<SEARCHBAR> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextField(
          decoration: InputDecoration(
        hintText: "Search Food",
        prefixIcon: Icon(Icons.search),
        border: InputBorder.none,
      )),
    );
  }
}
